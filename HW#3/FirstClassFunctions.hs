module FirstClassFunctions where

import Prelude hiding (LT, GT, EQ, id)
import Data.Maybe
import Data.List
import Operators

data Value = IntV  Int
           | BoolV Bool
           | ClosureV Pattern Exp Env  -- new
		       | TupleV [Value]		   
  deriving (Eq, Show)

data Exp = Literal   Value
         | Unary     UnaryOp Exp
         | Binary    BinaryOp Exp Exp
         | If        Exp Exp Exp
         | Variable  String
         | Call      Exp Exp         -- changed
		     | Declare	 Pattern Exp Exp -- declarations bind using patterns 
		     | Function Pattern Exp		 -- functions have patterns
		     | Tuple [Exp] 				 -- tuple expressions
  deriving (Eq, Show)

data Pattern = VarP String           -- variable patterns
			    | TupleP [Pattern]		 -- tuple patterns
  deriving (Eq, Show)
  
type Env = [(String, Value)]




-- Helper function from class, takes a pattern and value -> env
bind :: Pattern -> Value -> Env
-- You are taking the TupleP and TupleV and concatenating them into a new Env using the zip call in Haskell basically. That should handle Call and Function.
bind (TupleP []) (TupleV []) = [] 
bind (VarP n) v = [(VarP n, v)] 
bind (TupleP ps) (TupleV vs) = 
  --match (TupleP (tail patterntup)) (TupleV (tail valuetup)) ++ match (head patterntup) (head valuetup)
	concat [ bind p v | (p, v) <- zip ps vs]

-- End helper function


evaluate :: Exp -> Env -> Value
evaluate (Literal v) env = v

evaluate (Unary op a) env = 
  unary op (evaluate a env)

evaluate (Binary op a b) env = 
  binary op (evaluate a env) (evaluate b env)

evaluate (If a b c) env = 
  let BoolV test = evaluate a env in
    if test then evaluate b env
            else evaluate c env

evaluate (Variable x) env = fromJust (lookup x env)

evaluate (Declare x exp body) env = evaluate body newEnv
  --where newEnv = (x, evaluate exp env) : env
  where newEnv = bind x (evaluate exp env) ++ env

evaluate (Function x body) env = ClosureV x body env     -- new

evaluate (Call fun arg) env = evaluate body newEnv    -- changed
  where ClosureV x body closeEnv = evaluate fun env
        -- newEnv = (x, evaluate arg env) : closeEnv
        newEnv = bind x (evaluate arg env) ++ closeEnv

-- add evaluate for tuple
evaluate (Tuple x) env = TupleV [ evaluate expre env | expre <- x]

execute exp = evaluate exp []

-- Code to display expressions

instance Show Exp where
  show e = "[" ++ showExp 0 e ++ "]"

showExp level (Literal i)      = show i
showExp level (Variable x)    = x
showExp level (Declare x a b) = 
  if level > 0 then paren result else result
    where result = "var " ++ x ++ " = " ++ showExp 0 a ++ "; " ++ showExp 0 b
showExp level (If a b c)    = 
  if level > 0 then paren result else result
    where result = "if (" ++ showExp 0 a ++ ") " ++ showExp 0 b ++ " else " ++ showExp 0 c
showExp level (Unary Neg a)    = "-" ++ showExp 99 a
showExp level (Unary Not a)    = "!" ++ showExp 99 a
showExp level (Binary op a b)  = showBinary level (fromJust (lookup op levels)) a (fromJust (lookup op names)) b
  where levels = [(Or, 1), (And, 2), (GT, 3), (LT, 3), (LE, 3), (GE, 3), (EQ, 3), 
                  (Add, 4), (Sub, 4), (Mul, 5), (Div, 5)] 
        names = [(Or, "||"), (And, "&&"), (GT, ">"), (LT, "<"), (LE, "<="), (GE, ">="), (EQ, "=="), 
                  (Add, "+"), (Sub, "-"), (Mul, "*"), (Div, "/")] 
showExp level (Function x body)    = "function(" ++ x ++ ") {" ++ showExp 0 body ++ "}"
showExp level (Call fun arg)    = showExp 6 fun ++ "(" ++ showExp 0 arg ++ ")"

showBinary outer inner a op b =
  if inner < outer then paren result else result
      where result = showExp inner a ++ " " ++ op ++ " " ++ showExp inner b
      
paren x = "(" ++ x ++ ")"

 
-- same as in IntBool.hs

unary Not (BoolV b) = BoolV (not b)
unary Neg (IntV i)  = IntV (-i)

binary Add (IntV a)  (IntV b)  = IntV (a + b)
binary Sub (IntV a)  (IntV b)  = IntV (a - b)
binary Mul (IntV a)  (IntV b)  = IntV (a * b)
binary Div (IntV a)  (IntV b)  = IntV (a `div` b)
binary And (BoolV a) (BoolV b) = BoolV (a && b)
binary Or  (BoolV a) (BoolV b) = BoolV (a || b)
binary LT  (IntV a)  (IntV b)  = BoolV (a < b)
binary LE  (IntV a)  (IntV b)  = BoolV (a <= b)
binary GE  (IntV a)  (IntV b)  = BoolV (a >= b)
binary GT  (IntV a)  (IntV b)  = BoolV (a > b)
binary EQ  a         b         = BoolV (a == b)


