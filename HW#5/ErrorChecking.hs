module ErrorChecking where

import Prelude hiding (LT, GT, EQ, id)
import FirstClassFunctions hiding (evaluate)
import Operators

data Checked a = Good a | Error String
  deriving Show

data Value = IntV  Int
           | BoolV Bool
           | ClosureV String Exp Env  -- new
  deriving (Eq, Show)

data Exp = Literal   Value
         | Unary     UnaryOp Exp
         | Binary    BinaryOp Exp Exp
         | If        Exp Exp Exp
         | Variable  String
         | Declare   String Exp Exp
         | Function  String Exp      -- new
         | Call      Exp Exp         -- changed
		 | Try       Exp Exp         -- added
  deriving (Eq)
  
type Env = [(String, Value)]



evaluate :: Exp -> Env -> Checked Value
evaluate (Literal v) env = Good v
evaluate (Variable x) env =
  case lookup x env of
    Nothing -> Error ("Variable " ++ x ++ " undefined")
    Just v  -> Good v
evaluate (Unary op a) env =
  case evaluate a env of
    Error msg -> Error msg
    Good av ->   checked_unary op av
evaluate (Binary op a b) env =
  case evaluate a env of
    Error msg -> Error msg
    Good av ->
      case evaluate b env of
        Error msg -> Error msg
        Good bv ->
          checked_binary op av bv


-- if x y z -> if x then y else z
evaluate (If x y z) env =
  case evaluate x env of
    Error msg -> Error msg
    Good xv ->let BoolV temp = xv in 
      if temp
      then case evaluate y env of
        Error msg -> Error msg
        Good yv -> Good yv
      else case evaluate z env of
        Error msg-> Error msg
        Good zv -> Good zv

-- non-recursive var
-- what to do here? is this for declares?


-- function definition
evaluate (Fun arg body) env = 
  Good (ClosureV arg body env)

-- function call
evaluate (Call func arg) env = 


-- we need to implement 6.2 as well, a try catch syntax


execute exp = evaluate exp []

checked_unary :: UnaryOp -> Value -> Checked Value
checked_unary Not (BoolV b) = Good (BoolV (not b))
checked_unary Neg (IntV i)  = Good (IntV (-i))
checked_unary op   v         = 
    Error ("Unary " ++ show op ++ " called with invalid argument " ++ show v)

checked_binary :: BinaryOp -> Value -> Value -> Checked Value
checked_binary Add (IntV a)  (IntV b)  = Good (IntV (a + b))
checked_binary Sub (IntV a)  (IntV b)  = Good (IntV (a - b))
checked_binary Mul (IntV a)  (IntV b)  = Good (IntV (a * b))
checked_binary Div _         (IntV 0)  = Error "Divide by zero"
checked_binary Div (IntV a)  (IntV b)  = Good (IntV (a `div` b))
checked_binary And (BoolV a) (BoolV b) = Good (BoolV (a && b))
checked_binary Or  (BoolV a) (BoolV b) = Good (BoolV (a || b))
checked_binary LT  (IntV a)  (IntV b)  = Good (BoolV (a < b))
checked_binary LE  (IntV a)  (IntV b)  = Good (BoolV (a <= b))
checked_binary GE  (IntV a)  (IntV b)  = Good (BoolV (a >= b))
checked_binary GT  (IntV a)  (IntV b)  = Good (BoolV (a > b))
checked_binary EQ  a         b         = Good (BoolV (a == b))
checked_binary op  a         b         = 
    Error ("Binary " ++ show op ++ 
           " called with invalid arguments " ++ show a ++ ", " ++ show b)
