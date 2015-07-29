fibs = 
	1: 1 : zipWith (+) fibs (tail fibs) 

primes = sieve [2..]
	where
		sieve(p:xs) = p : sieve [x | x <- xs, rem x p /= 0]	

partC =
	[fibs!!(x-1) | x <- primes] 
	--[fibs!!(x-1) | x <- take 10 (primes)]
	--the above line isjust to see what would happen if you do take 10 (primes)

partD = 
	[primes!!(x-1) | x <- fibs]

main = do
	print (take 10 fibs)
	print (take 10 primes)
	print (take 10 partC)
	print (take 10 partD)


-- David Ko
-- UTEID: dpk326
-- Email: davidpeterko@gmail.com
-- HW #1A


