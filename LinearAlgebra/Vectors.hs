module LinearAlgebra.Vectors
(
dot,
isOrthogonal,
determinant,
) where

dot :: [Int] -> [Int] -> Int
dot [a] [b] = a * b
dot xs ys = head xs * head ys + dot (tail xs) (tail ys) 

isOrthogonal :: [Int] -> [Int] -> Bool
isOrthogonal xs ys 
	| dot xs ys == 0 = True
	| otherwise = False

eliminateRowsAndColumns :: [[Int]] -> Int -> Int-> [[Int]]
eliminateRowsAndColumns xxs = 

determinant :: [[Int]] -> Int
determinant xxs 
	| rowLength /= columnLength = error "Row length must equal column length for a determinant."
	| otherwise = properDeterminant xxs
	where 
		rowLength = length xxs
		columnLength = length (head xxs)
		properDeterminant [[a]] = a
		properDeterminant 
