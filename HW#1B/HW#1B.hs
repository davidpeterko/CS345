area :: Geometry -> Float
area (Circle _ _ r) = pi * rad ^ 2
	where
		rad = fromIntegral r :: Float
area (Rectangle x1 y1 x2 y2) = (abs $ xx2 - xx1) * (abs $ yy2 - yy1)
	where
		xx2 = fromIntegral x2 :: Float
		yy2 = fromIntegral y2 :: Float
		xx1 = fromIntegral x1 :: Float
		yy1 = fromIntegral y1 :: Float
area (Triangle _ _ b h) = (base * height)/2
	where
		base = fromIntegral b :: Float
		height = fromIntegral h :: Float

--boundingbox :: Geometry -> Rectangle Int Int Int Int
boundingbox :: Geometry -> Geometry 
boundingbox (Circle x y r) = Rectangle x1 y1 x2 y2
	where
		x1 = x-r  
		y1 = y-r  
		x2 = x+r
		y2 = y+r
boundingbox (Rectangle x1 y1 x2 y2) = Rectangle x1 y1 x2 y2
boundingbox (Triangle x y b h) = Rectangle x1 y1 x2 y2
	where
		x1 = x + (b `div` 2)
		x2 = x - (b `div` 2)
		y1 = y + (h `div` 2)
		y2 = y - (h `div` 2)

data Geometry = Point Int Int-- x, y
              | Circle Int Int Int -- x, y, radius
              | Rectangle Int Int Int Int-- x1, y1, x2, y2
              | Group [Geometry]
			  | Triangle Int Int Int Int--x1, y1, base, height
			  deriving (Show)
			  

-- Name: David Ko
-- UT EID: dpk326
-- Assignment: HW1#B
-- Notes:
-- For bounding box for Triangle, I am not sure if the `div` operator is the correct one since
-- if you called boundingbox $ Triangle 4 4 4 9
-- given the paramters are respectively Triangle x y b h, 
-- I divide the base and height by 2, but `div` truncates the 9/2 into 4.
-- And vice versa for the base.
-- Compilation generates WARNINGS because of tabs
-- Not sure how to fix that I tried everything I could

-- TESTS
-- *Main> area $ Circle 0 0 4
-- 50.265484
-- *Main> area $ Rectangle 4 5 9 3
-- 10.0
-- *Main> area $ Triangle 5 8 2 5
-- 5.0
-- *Main> boundingbox $ Circle 4 5 6
-- Rectangle (-2) (-1) 10 11
-- *Main> boundingbox $ Rectangle 84 654 73 2
-- Rectangle 84 654 73 2
-- *Main> boundingbox $ Triangle 4 5 6 6
-- Rectangle 7 8 1 2
