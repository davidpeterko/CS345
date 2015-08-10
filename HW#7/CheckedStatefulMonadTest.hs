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

--t10 = parseExp "try{ 3 + true} catch {7}"
t11 = parseExp "5 + 10 + true"
--t12 = parseExp "try{true + true} catch {15 + 10}"
t13 = parseExp "var x = 3; x"
--t14 = parseExp "if (true) 5 else 10"
--t15 = parseExp "if (false) 5 else 10"
--t16 = parseExp "try{ if (5 > 1) 10 else 5} catch {100}"
--t17 = parseExp "try{ if (5 > 7) 10 else 5} catch {100}"
--t18 = parseExp "try{var x = 3 + false; x} catch {100}"
--t19 = parseExp "if (8 + false) 10 else 55"


t14 = parseExp "var f = function(x) { var y = x + 3; return y }; f(7)"
t15 = parseExp "var f = function(x) { var y = x * x; return y }; f(5)"
t16 = parseExp "var f = function(x) { return x }; f(5)"
t17 = parseExp "var f = function(x) { return 6+3 }; f(100)"
t18 = parseExp "!9"
t20 = parseExp "var f = function(x) { return 1/0 }; f(1)"
t21 = parseExp "var f = function(x) { var y = 10; return y + x}; f(50)"
t22 = parseExp "var f = function(x) { var y = x + 3; return y }; f(7)"
t23 = parseExp "var f = function(x) { var y = x + 3; return y }; f(15)"
t24 = parseExp "var f = function(x) { var y = x + 3; return y }; f(22)"
t25 = parseExp "var f = function(x) { var y = x + 3; return y }; f(5)"
t26 = parseExp "var f = function(x) { var y = x + 3; return y }; f(50)"
t27 = parseExp "var f = function(x) { var y = x + 3; return y }; f(44)"
t28 = parseExp "var f = function(x) { var y = x + 3; return y }; f(35)"





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
  --test "evaluate" execute t10
  test "evaluate" execute t11
  --test "evaluate" execute t12
  test "evaluate" execute t13
  test "evaluate" execute t14
  test "evaluate" execute t15
  test "evaluate" execute t16
  test "evaluate" execute t17
  test "evaluate" execute t18
  test "evaluate" execute t20
  test "evaluate" execute t21
  test "evaluate" execute t22
  test "evaluate" execute t23
  test "evaluate" execute t24
  test "evaluate" execute t25
  test "evaluate" execute t26
  test "evaluate" execute t27
  test "evaluate" execute t28

-- I combined both tests from StatefulMonadTest.hs and ErrorChecking.hs 
-- into one file to test my CheckedStatefulMonad.hs into this file called:
-- CheckedStatefulMonadTest.hs
-- All test cases pass with the changes I've made.


