module Declare where
import Base
import Data.Maybe

-- Define the data type for the abstract syntax of expressions, including variable declarations
data Exp = Number     Int
         | Add        Exp Exp
         | Subtract   Exp Exp
         | Multiply   Exp Exp
         | Divide     Exp Exp
         | Variable   String
         | Declare    [(String, Exp)] Exp

-- An environment is a list of strings and values
type Env = [(String, Int)]


--checkduplicates
--checkduplicate :: Eq s => [(s, i)] -> Bool
--checkduplicate [] = False
--checkduplicate ((s, i) : env) =
    --isJust (lookup s env)

-- Evaluate an expression in an environment
evaluate :: Exp -> Env -> Int
evaluate (Number i) env     = i
evaluate (Add a b) env       = evaluate a env + evaluate b env
evaluate (Subtract a b) env  = evaluate a env - evaluate b env
evaluate (Multiply a b) env  = evaluate a env * evaluate b env
evaluate (Divide a b) env    = evaluate a env `div` evaluate b env
evaluate (Variable x) env    = fromJust (lookup x env)
--evaluate (Declare x exp body) env = evaluate body newEnv
  --where newEnv = (x, evaluate exp env) : env

evaluate (Declare declarations body) env = 
    --if checkduplicate declarations
    --then error "Can't have duplicates."
    --else evaluate body newEnv
    evaluate body newEnv
    where newEnv = ([(str, evaluate expr env) | (str, expr) <- declarations])

    --where newEnv = env ++ (x, evaluate y env)
    --  x = [a | (a, b) <- declarations]
    --  y = [b | (a, b) <- declarations]
    -- this logic is correct, youcan pull a or b from (a, b) from declarations
    -- we need to pass a single exp into evaluate y env, not a list of [Exp]

-- execute evaluates an expression in an empty environment
execute e = evaluate e []

-- Helper code to "show" expressions. Showing an expression is the process of converting 
-- the expression into a string. It is complicated by the need to handle precedence
instance Show Exp where
  show e = "[" ++ showExp 0 e ++ "]"

showExp level (Number i)      = show i
showExp level (Variable x)    = x
-- need to fix this
--showExp level (Declare declarations body)
showExp level (Declare x a b) = 
   if level > 0 then paren result else result
     where result = "var " ++ x ++ " = " ++ showExp 0 a ++ "; " ++ showExp 0 b
showExp level (Add a b)       = showBinary level 1 a " + " b
showExp level (Subtract a b)  = showBinary level 1 a " - " b
showExp level (Multiply a b)  = showBinary level 2 a "*" b
showExp level (Divide a b)    = showBinary level 2 a "/" b

showBinary outer inner a op b =
  if inner < outer then paren result else result
      where result = showExp inner a ++ op ++ showExp inner b