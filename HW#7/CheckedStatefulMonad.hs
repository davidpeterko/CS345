module CheckedStatefulMonad where

import Prelude hiding (LT, GT, EQ, id)
import Base
import Data.Maybe
import Stateful hiding (Stateful, evaluate)
import ErrorChecking hiding (evaluate, checked_unary, checked_binary)
import Operators

--data Stateful t = ST (Memory -> (t, Memory))
data CheckedStateful t = CST (Memory -> (Checked t, Memory))

--stateful monad reference
instance Monad CheckedStateful where
	return val = CST (\m -> (Good val, m))
	(CST c) >>= f = 
  		CST (\m -> 
    		let (val, m') = c m in 				--this is where we check the error?
				case val of
					Good tempval -> 
						let CST f' = f tempval in
        					f' m'
					Error msg -> (Error msg, m')
					Return valu -> Return (valu, m')
    		)
      

--helper function
cstHelper v = CST (\m -> (v, m))

--return helper function
handleReturn :: CheckedStateful Value -> CheckedStateful Value
handleReturn (CST f) = 
	CST (/m ->
		let (val, m') = f m in
			case val of 
				Return retval -> (Good retval, m')    -- conver tReturn values into good values
				Good goodval -> (Good Undefined, m')  -- good values into undefined values
				-- need anothjer case of value to be Undefined
				Error msg -> (Error msg, m')
	)

evaluate :: Exp -> Env -> CheckedStateful Value

evaluate (Literal v) env     = return v

evaluate (Unary op a) env = do
  av <- evaluate a env
  checked_unary op av

evaluate (Binary op a b) env = do
  av <- evaluate a env
  bv <- evaluate b env
  checked_binary op av bv

evaluate (If a b c) env = do
  av <- evaluate a env
  case av of
    (BoolV cond) -> evaluate (if cond then b else c) env
    _ -> cstHelper(Error ("Expected boolean but found " ++ show av))


-- variables and declarations
evaluate (Variable x) env    =
  case lookup x env of
    Nothing -> cstHelper(Error ("Variable " ++ x ++ " undefined"))
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
      handleReturn(evaluate body newEnv) 					-- fix Call function
    _ -> cstHelper(Error ("Expected function but found " ++ show funv))


-- do we need a new return statement?


-- mutation operations
evaluate (Seq a b) env = do
  evaluate a env
  evaluate b env

evaluate (Mutable e) env = do
  ev <- evaluate e env
  newMemory ev        

evaluate (Access a) env = do
  AddressV i <- evaluate a env
  readMemory i

evaluate (Assign a e) env = do
  AddressV i <- evaluate a env
  ev <- evaluate e env
  updateMemory ev i


-- memory helpers, to be checked do you add a good?
newMemory val = CST (\mem->( Good (AddressV (length mem)), mem ++ [val]))

readMemory i = CST (\mem-> (Good (access i mem), mem))

updateMemory val i = CST (\mem-> (Good val, update i val mem))

runStateful (CST c) = 
   let (val, mem) = c [] in val


execute exp = runStateful (evaluate exp [])

-- this is from errorchecking
checked_unary :: UnaryOp -> Value -> CheckedStateful Value
checked_unary Not (BoolV b) = cstHelper(Good (BoolV (not b)))
checked_unary Neg (IntV i)  = cstHelper(Good (IntV (-i)))
checked_unary op   v         = 
    cstHelper(Error ("Unary " ++ show op ++ " called with invalid argument " ++ show v))

checked_binary :: BinaryOp -> Value -> Value -> CheckedStateful Value
checked_binary Add (IntV a)  (IntV b)  = cstHelper(Good (IntV (a + b)))
checked_binary Sub (IntV a)  (IntV b)  = cstHelper(Good (IntV (a - b)))
checked_binary Mul (IntV a)  (IntV b)  = cstHelper(Good (IntV (a * b)))
checked_binary Div _         (IntV 0)  = cstHelper(Error "Divide by zero")
checked_binary Div (IntV a)  (IntV b)  = cstHelper(Good (IntV (a `div` b)))
checked_binary And (BoolV a) (BoolV b) = cstHelper(Good (BoolV (a && b)))
checked_binary Or  (BoolV a) (BoolV b) = cstHelper(Good (BoolV (a || b)))
checked_binary LT  (IntV a)  (IntV b)  = cstHelper(Good (BoolV (a < b)))
checked_binary LE  (IntV a)  (IntV b)  = cstHelper(Good (BoolV (a <= b)))
checked_binary GE  (IntV a)  (IntV b)  = cstHelper(Good (BoolV (a >= b)))
checked_binary GT  (IntV a)  (IntV b)  = cstHelper(Good (BoolV (a > b)))
checked_binary EQ  a         b         = cstHelper(Good (BoolV (a == b)))
checked_binary op  a         b         = 
    cstHelper(Error ("Binary " ++ show op ++ 
           " called with invalid arguments " ++ show a ++ ", " ++ show b))


