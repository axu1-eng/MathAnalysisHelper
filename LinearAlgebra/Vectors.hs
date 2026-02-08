module LinearAlgebra.Vectors
(
Vector(..),
addVectorNums,
addVectorExpressions,
scalarMultiplyVectorNums,
scalarMultiplyVectorExpressions,
dotProductNums,
dotProductExpression,
crossProductNums,
crossProductExpression,
determinantNum,
determinantExpression,
crossyNum,
crossyExpression,
) where

import qualified General.Expression as Exp

data Vector a = Vector [a] deriving (Show,Eq)

vectorAppend :: Vector a -> Vector a -> Vector a
(Vector xs) `vectorAppend` (Vector ys) = Vector (xs ++ ys)

vectorDropIndex :: Int -> Vector a -> Vector a
vectorDropIndex a (Vector xs) = Vector (fst(splitArray) ++ tail(snd(splitArray)))
    where splitArray = splitAt a xs

vectorGetElemAt :: Int -> Vector a -> a
vectorGetElemAt a (Vector xs) = head(snd(splitArray))
    where splitArray = splitAt a xs

getVectorDimension :: Vector a -> Int
getVectorDimension (Vector xs) = length xs

addVectorNums :: (Num a) => Vector a -> Vector a -> Vector a
(Vector []) `addVectorNums` (Vector []) = Vector []
(Vector []) `addVectorNums` (Vector _) = error "Cannot add vectors of different dimensions"
(Vector _) `addVectorNums` (Vector []) = error "Cannot add vectors of different dimensions"
(Vector (x:xs)) `addVectorNums` (Vector (y:ys)) = Vector [x+y] `vectorAppend` ((Vector xs) `addVectorNums` (Vector ys))

addVectorExpressions :: Vector Exp.Expression -> Vector Exp.Expression -> Vector Exp.Expression
(Vector []) `addVectorExpressions` (Vector []) = Vector []
(Vector []) `addVectorExpressions` (Vector _) = error "Cannot add vectors of different dimensions"
(Vector _) `addVectorExpressions` (Vector []) = error "Cannot add vectors of different dimensions"
(Vector (x:xs)) `addVectorExpressions` (Vector (y:ys)) = Vector [x `Exp.addExpression` y] `vectorAppend` ((Vector xs) `addVectorExpressions` (Vector ys))

scalarMultiplyVectorNums :: (Num a) => a -> Vector a -> Vector a 
scalarMultiplyVectorNums a (Vector xs) = Vector [a*x | x <- xs]  

scalarMultiplyVectorExpressions :: Int -> Vector Exp.Expression -> Vector Exp.Expression
scalarMultiplyVectorExpressions a (Vector xs) = Vector [Exp.scalarMultiplyExpression a x | x <- xs]

dotProductNums :: (Num a) => Vector a -> Vector a -> a
(Vector []) `dotProductNums` (Vector []) = 0
(Vector []) `dotProductNums` (Vector _) = error "Cannot add vectors of different dimensions"
(Vector _) `dotProductNums` (Vector []) = error "Cannot add vectors of different dimensions" 
(Vector (x:xs)) `dotProductNums` (Vector (y:ys)) = x*y + ((Vector xs) `dotProductNums` (Vector ys))

dotProductExpression :: Vector Exp.Expression -> Vector Exp.Expression -> Exp.Expression
(Vector []) `dotProductExpression` (Vector []) = Exp.Expression [Exp.Term 0 []]
(Vector []) `dotProductExpression` (Vector _) = error "Cannot add vectors of different dimensions"
(Vector _) `dotProductExpression` (Vector []) = error "Cannot add vectors of different dimensions" 
(Vector (x:xs)) `dotProductExpression` (Vector (y:ys)) = x `Exp.multiplyExpression` y `Exp.addExpression` ((Vector xs) `dotProductExpression` (Vector ys))

crossProductNums :: (Num a) => Vector a -> Vector a -> Vector a
(Vector [a1,a2,a3]) `crossProductNums` (Vector [b1,b2,b3]) = Vector [a2*b3-b2*a3,a3*b1-a1*b3,a1*b2-b1*a2]
(Vector xs) `crossProductNums` (Vector ys) = error "Cross product is only defined in 3 dimensions"

crossProductExpression :: Vector Exp.Expression -> Vector Exp.Expression -> Vector Exp.Expression
(Vector [a1,a2,a3]) `crossProductExpression` (Vector [b1,b2,b3]) = Vector [(a2 `Exp.multiplyExpression` b3) `Exp.subtractExpression` (b2 `Exp.multiplyExpression` a3),(a3 `Exp.multiplyExpression` b1) `Exp.subtractExpression` (a1 `Exp.multiplyExpression` b3),(a1 `Exp.multiplyExpression` b2) `Exp.subtractExpression` (b1 `Exp.multiplyExpression` a2)]
(Vector xs) `crossProductExpression` (Vector ys) = error "Cross product is only defined in 3 dimensions"

removeRow :: Int -> [Vector a] -> [Vector a]
removeRow a xs = (fst(splitArray) ++ tail(snd(splitArray)))
    where splitArray = splitAt a xs

removeColumn :: Int -> [Vector a] -> [Vector a]
removeColumn a xs = [vectorDropIndex a x | x <- xs]

determinantNum :: (Num a) => [Vector a] -> a
determinantNum [] = error "Matrix must be square to take the determinant"
determinantNum [Vector [x]] = x
determinantNum xs = foldl (+) 0 [(-1)^i * (vectorGetElemAt i topVector) * determinantNum (removeColumn i (removeRow 0 xs)) | i <- [0,1..getVectorDimension(topVector)-1]]
    where
        topVector = head xs 

determinantExpression :: [Vector Exp.Expression] -> Exp.Expression
determinantExpression [] = error "Matrix must be square to take the determinant"
determinantExpression [Vector [x]] = x
determinantExpression xs = foldl (Exp.addExpression) (Exp.Expression [Exp.Term 0 [""]]) [(Exp.scalarMultiplyExpression ((-1)^i) (vectorGetElemAt i topVector)) `Exp.multiplyExpression` (determinantExpression (removeColumn i (removeRow 0 xs))) | i <- [0,1..getVectorDimension(topVector)-1]]
    where
        topVector = head xs 

crossyNum :: (Num a) => [Vector a] -> Vector a 
crossyNum xs = Vector [((-1)^i) * determinantNum (removeColumn i xs) | i <- [0,1..getVectorDimension(topVector)-1]]
    where
        topVector = head xs

crossyExpression :: [Vector Exp.Expression] -> Vector Exp.Expression
crossyExpression xs = Vector [Exp.scalarMultiplyExpression ((-1)^i) (determinantExpression (removeColumn i xs)) | i <- [0,1..getVectorDimension(topVector)-1]]
    where
        topVector = head xs 