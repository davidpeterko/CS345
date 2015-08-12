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

t4 = parseExp ("var x = mutable 3; "++
               "var f = function(p) { return (p = @p+1) };"++
               "f(x)")

t5 = parseExp ("var x = mutable 3; "++
               "var f = function(p) { p = @p+1 };"++
               "f(x)")

t6 = parseExp ("var x = mutable 3; "++
               "var f = function(p) { (return (p = @p+1)); x / 0 };"++
               "f(x)")

t7 = parseExp ("var m = function(x) { return mutable x }; "++
               "@m(3)")


main = do
  test "evaluate" execute t1
  test "evaluate" execute t2
  test "evaluate" execute t3
  test "evaluate" execute t4
  test "evaluate" execute t5
  test "evaluate" execute t6
  test "evaluate" execute t7
