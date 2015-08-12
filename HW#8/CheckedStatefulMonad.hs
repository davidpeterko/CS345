module CheckedStatefulMonad where

import Prelude hiding (LT, GT, EQ, id)
import Operators


data Checked a = Good a | Error String | Return Value
  deriving Show


data Value = IntV  Int
           | BoolV Bool
           | ClosureV String Exp Env
           | AddressV Int        -- new
	   	   | Undefined
		   | ObjectV Exp String
  deriving (Eq, Show)

type Memory = [Value]

access i mem = mem !! i

update :: Int -> Value -> Memory -> Memory
update addr val mem =
  let (before, _ : after) = splitAt addr mem in
    before ++ [val] ++ after

type Stateful t = Memory -> (t, Memory)

data Exp = Literal   Value
         | Unary     UnaryOp Exp
         | Binary    BinaryOp Exp Exp
         | If        Exp Exp Exp
         | Variable  String
         | Declare   String Exp Exp
         | Function  String Exp
         | Call      Exp Exp
         | Seq       Exp Exp
         | Mutable   Exp         -- new
         | Access    Exp         -- new
         | Assign    Exp Exp   -- new
	 	 | ReturnExp Exp
		 | ObjectExp [(String, Exp)]
		 | ObjAccess Exp String
  deriving (Eq, Show)
  
type Env = [(String, Value)]

data CheckedStateful t = CST (Memory -> (Checked t, Memory))

instance Monad CheckedStateful where
  return val = CST (\m -> (Good val, m))
  (CST c) >>= f = 
    CST (\m -> 
      let (ch, m') = c m in
	case ch of 
	  Error msg -> (Error msg, m')
          Return v -> (Return v, m')
	  Good val -> 
            let CST f' = f val in
              f' m'
      )

-- unwind function, this monadic function recursively walks through and builds our new OBjectV value
unWind :: [(String, Exp)] -> Env -> CheckedStateful Value
unWind [] env = return (ObjectV [])
unWind ((xstr, xexp) : xs) env = do
       vexp <- evaluate xexp env
       ObjectV newXS <- unWind(xs) env
       return (ObjectV ((xstr, vexp) : newXS))        


evaluate :: Exp -> Env -> CheckedStateful Value
-- basic operations
evaluate (Literal l) env = return l
evaluate (Unary op a) env = do
  av <- evaluate a env
  checkedToCST $ checked_unary op av
evaluate (Binary op a b) env = do
  av <- evaluate a env
  bv <- evaluate b env
  checkedToCST $ checked_binary op av bv
evaluate (If a b c) env = do
  av <- evaluate a env
  case av of
    BoolV cond -> evaluate (if cond then b else c) env
    _ -> myError ("Expected boolean but found " ++ show av)
-- variables and declarations
evaluate (Variable x) env    =
  case lookup x env of
    Nothing -> myError ("Variable " ++ x ++ " undefined")
    Just v  -> return v
evaluate (Declare x e body) env = do    -- non-recursive case
  ev <- evaluate e env
  let newEnv = (x, ev) : env
  evaluate body newEnv
-- function definitions and function calls
evaluate (Function x body) env = return (ClosureV x body env)
evaluate (Call fun arg) env = do
  funv <- evaluate fun env
  case funv of
    ClosureV x body closeEnv -> do
      argv <- evaluate arg env
      let newEnv = (x, argv) : closeEnv
      handleReturn (evaluate body newEnv)
    _ -> myError ("Expected function but found " ++ show funv)
evaluate (ReturnExp a) env = do
  av <- evaluate a env
  checkedToCST (Return av)

-- mutation operations
evaluate (Seq a b) env = do
  evaluate a env
  evaluate b env
evaluate (Mutable e) env = do
  ev <- evaluate e env
  newMemory ev        
evaluate (Access a) env = do
  v <- evaluate a env
  case v of 
    AddressV i -> readMemory i
    _ -> myError ("Can't access " ++ show v)
evaluate (Assign a e) env = do
  v <- evaluate a env
  case v of  
    AddressV i -> do 
      ev <- evaluate e env
      updateMemory ev i
    _ -> myError ("Can't assign to " ++ show v)

checkedToCST ch = CST (\m-> (ch, m))

myError msg = CST (\m-> (Error msg, m))

handleReturn (CST w) = CST (\m->
  let (ch, m') = w m in
    case ch of 
      Good val -> (Good Undefined, m')
      Error msg -> (Error msg, m')
      Return val -> (Good val, m'))
 
newMemory val = CST (\mem-> (Good $ AddressV (length mem), mem ++ [val]))

readMemory i = CST (\mem-> (Good $ access i mem, mem))

updateMemory val i = CST (\mem-> (Good val, update i val mem))

runStateful (CST c) = 
   let (val, mem) = c [] in val

execute exp = runStateful (evaluate exp [])


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


