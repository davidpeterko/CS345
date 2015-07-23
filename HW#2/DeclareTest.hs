import Prelude hiding (LT, GT, EQ, id)
import Declare
import DeclareParse
import Base

t1 = "4"
t2 = "-4 - 6"
t3 = "var x = 3; x"
t4 = "var x = 3; var y = x*x; x"
t5 = "var x = 3; var x = x*x; x"
t6 = "var x = 3; var y = x*x; y"
t7 = "2 + (var x =2; x)"
t8 = "var x = 3, x = x + 2; x*2"
t9 = "var x = 3; var x = x + 2; x*2"
t10 = "var a = 3; var b = 8; b"
t11 = "var a = 3; a"
t12 = "var a = 2, b = 7; (var m = 5 * a, n = b - 1; a * n + b / m) + a"
t13 = "var a = 3; var b = 8; var a = b; var b = a; a + b"
t14 = "var x = 3, x = x + 2; x*2"
t15 = "var a = 3, b = a; a"
t16 = "var a = 3, a = 4, c = 4; a + b"
t17 = "var a = 3; var b = 8; var a = b, b = a; a + b" 
t18 = "var x = 1; var y = 3; x * x * x * y"
t19 = "var x = 3, x = 5 * x; var y = 2; y * x"


test1 = do
  test "execute" execute (parseExp t1)
  test "execute" execute (parseExp t2)
  test "execute" execute (parseExp t3)
  test "execute" execute (parseExp t4)
  test "execute" execute (parseExp t5)
  test "execute" execute (parseExp t6)
  test "execute" execute (parseExp t7)
  test "execute" execute (parseExp t8)
  test "execute" execute (parseExp t9)
  test "execute" execute (parseExp t10)
  test "execute" execute (parseExp t11)
  test "execute" execute (parseExp t12)
  test "execute" execute (parseExp t13)
  test "execute" execute (parseExp t14)
  test "execute" execute (parseExp t15)
  test "execute" execute (parseExp t16)
  test "execute" execute (parseExp t17)
  test "execute" execute (parseExp t18)
  test "execute" execute (parseExp t19)

main = do
  tagged "DeclTest1" test1
  
  
