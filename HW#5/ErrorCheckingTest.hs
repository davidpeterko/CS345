import Base
import FirstClassFunctions hiding (evaluate, execute)
import FirstClassFunctionsParse
import ErrorChecking

testUBV = execute (parseExp "x")

testDBZ2 = execute (parseExp "3 / 0")

test3 = execute (parseExp "-true")
test4 = execute (parseExp "!4")
test5 = execute (parseExp "4 + true")
test6 = execute (parseExp "4 && false")

test7 = execute (parseExp "try{ 3 + true} catch {7}")

test8 = execute (parseExp "5 + 10 + true")
test9 = execute (parseExp "try{true + true} catch {15 + 10}")
test10 = execute (parseExp "var x = 3; x")
test11 = execute (parseExp "if (true) 5 else 10")
test12 = execute (parseExp "if (false) 5 else 10")
test13 = execute (parseExp "try{ if (5 > 1) 10 else 5} catch {100}")
test14 = execute (parseExp "try{ if (5 > 7) 10 else 5} catch {100}")
test15 = execute (parseExp "try{var x = 3 + false; x} catch {100}")
test16 = execute (parseExp "if (8 + false) 10 else 55")


main = do
  tagged "testUBV" (print testUBV)
  tagged "testDBZ2" (print testDBZ2)
  print test3
  print test4
  print test5
  print test6
  print test7
  print test8
  print test9
  print test10
  print test11
  print test12
  print test13
  print test14
  print test15
  print test16



