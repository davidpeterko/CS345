import Base
import Prelude hiding (LT, GT, EQ)
import FirstClassFunctions
import FirstClassFunctionsParse

p1 = parseExp ("var T = function(a) { function(b) { a } };"++
               "var F = function(a) { function(b) { b } };"++
               "var not = function(b) { b(F)(T) };"++
               "not(F)")
               
p2 = parseExp (
      "var x = 5;"++
      "var f = function(y) { x - y };"++
      "var x = f(9);"++
      "f(x)")

p3 = parseExp (
      "var x = 5;"++
      "var f = function(y) { var y = x * y; function(x) { x + y } };"++
      "var g = f(2);"++
      "g(5)")

p4 = parseExp (
      "var comp = function(f) { function(g) { function(x) { f(g(x)) }}};"++
      "var inc = function(x) { x + 1 };"++
      "var square = function(x) { x * x };"++
      "var f = comp(inc)(square);"++
      "f(5)")

p5 = parseExp (
      "var map = function(f) { function(x) { function(y) { f(x) + f(y) }}};"++
      "var g = function(x) { x + 1 };"++
      "map(g)(3)(4)")
     
-- test cases from canvas

p6 = parseExp ("var f = function(a, b, c) { a + 2 + b + c}; f(3, 5, 5)")

p7 = parseExp ("var z = 10; var (x, y) = (3, z*2); y / z")

p8 = parseExp ("var z = 10; var (x, y) = (3, z*2); var f = function (z, x, y) {(y/z) + x}; f(z,x,y)")

p9 = parseExp ("var (x, (y,z)) = (5,(5,5)); var f = function(a,b){a + b}; var g = function(c,d){c + d}; g(x,f(y,z))")

p10 = parseExp ("var (a,b) = (10,20); var f = function(a,b){-30}; var g = function(c){a+b}; g(f(a,b))")

p11 = parseExp ("var f = function(a,b,c,d) {a + b + c + d}; var g = function (a, b) {a*b}; var w = 1; var x = 2; var y = 3; var z = 4; f(g(w,x),g(x,y),g(y,z),g(z,w))")

p12 = parseExp ("var f = function(a) {function(b){a + b}}; var s = 4; f(s)(3)")

p13 = parseExp ("var f = function(a) {function(b){b(a)}}; var g = function(x){x*10}; var s = 2; f(s)(g)")

p14 = parseExp ("var f = function(a,b,c) {function(x,y,z){x(y)(z) + a + b + c}}; var inner = function(var1){function(var2){var1*var2}}; var (q,r,s) = (10,3,4); f(r,s,5)(inner,q,q)")

p15 = parseExp ("var add = function(a,b) {a + b}; var sub = function(a,b) {a - b}; var mul = function(a,b) {a*b}; var div = function(a,b) {a/b}; var s = 5; div(sub(mul(sub(add(s,s),add(add(s,s),s)),s),s),s)")


-- end canvas tests


-- my tests

p16 = parseExp ("if (true) 1; else 10")

p17 = parseExp ("if (true) 15; else 11")

p18 = parseExp ("var x = 10; var(x,y) = (7,z); z")

p19 = parseExp ("var x = 10; var(x,y) = (10, z*z + 3); z")
 
p20 = parseExp ("var x = 1; var (x,y) = (10,11); y")

main = do
  tagged "FirstClassT1" (do
  	test "execute" execute p1
  	test "execute" execute p2
  	test "execute" execute p3
  	test "execute" execute p4
  	test "execute" execute p5
  	test "execute" execute p6
  	test "execute" execute p7
  	test "execute" execute p8
  	test "execute" execute p9
	test "execute" execute p10
	test "execute" execute p11
	test "execute" execute p12
	test "execute" execute p13
	test "execute" execute p14
	test "execute" execute p15
	test "execute" execute p16 
	test "execute" execute p17
	test "execute" execute p18
	test "execute" execute p19
	test "execute" execute p20
   )
  	
