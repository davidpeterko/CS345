--module CheckedStatefulMonadTest where
import Stateful hiding (Stateful, evaluate, execute)
import Base
import CheckedStatefulMonad
import StatefulParse

t1 = parseExp ("var x = mutable 3;"++
     "var y = mutable true;"++
     "if (@y) { x = @x + 1 } else { x };"++
     "@x")

t2 = parseExp ("var x = mutable 3;"++
     "var y = mutable 7;"++
     "x = @x + @y;"++
     "y = @y * @x")

t3 = parseExp ("var x = mutable 3; "++
               "var f = function(p) { p = @p+1 };"++
               "f(x); @x")


t4 = parseExp "x"

t5 = parseExp "3 / 0"

t6 = parseExp "-true"

t7 = parseExp "!4"

t8 = parseExp "4 + true"

t9 = parseExp "4 && false"


main = do
  test "evaluate" execute t1
  test "evaluate" execute t2
  test "evaluate" execute t3
  test "evaluate" execute t4
  test "evaluate" execute t5
  test "evaluate" execute t6
  test "evaluate" execute t7
  test "evaluate" execute t8
  test "evaluate" execute t9

-- I combined both tests from StatefulMonadTest.hs and ErrorChecking.hs 
-- into one file to test my CheckedStatefulMonad.hs into this file called:
-- CheckedStatefulMonadTest.hs
-- All test cases pass with the changes I've made.


