module LinearAlgebra.Vectors (
    Vector (..),
    addVector,
) where

import qualified General.Expression as Exp

data Vector a = Vector [a] deriving (Show)

vectorAppend :: Vector a -> Vector a -> Vector a
(Vector xs) `vectorAppend` (Vector ys) = Vector (xs ++ ys)

addVectorNums :: (Num a) => Vector a -> Vector a -> Vector a
(Vector []) `addVectorNums` (Vector []) = Vector []
(Vector []) `addVectorNums` (Vector _) = error "Cannot add vectors of different dimensions"
(Vector _) `addVectorNums` (Vector []) = error "Cannot add vectors of different dimensions"
(Vector (x : xs)) `addVectorNums` (Vector (y : ys)) = Vector [x + y] `vectorAppend` ((Vector xs) `addVector` (Vector ys))

-- addVectorExpressions :: (Exp.Expression a) => Vector a -> Vector a -> Vector a1
