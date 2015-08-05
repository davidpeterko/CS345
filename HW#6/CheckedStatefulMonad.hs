module CheckedStatefulMonad where

import Prelude hiding (LT, GT, EQ, id)
import Base
import Data.Maybe
import Stateful hiding (Stateful, evaluate)
import FirstClassFunctions hiding (evaluate)
import ErrorChecking hiding (evaluate)

--data Stateful t = ST (Memory -> (t, Memory))
data CheckedStateful t = CST (Memory -> (Checked t, Memory))

--stateful monad reference
instance Monad CheckedStatefulMonad where


 -- return val = CST (\m -> (val, m))
 -- (CST c) >>= f = 
 --   CST (\m -> 
 --     let (val, m') = c m in
 --       let CST f' = f val in
 --         f' m'
 --     )
 --       







