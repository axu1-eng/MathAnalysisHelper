module General.Expression (
Term(..),
Expression(..),
addTerm,
addLikeTermsInExpression,
) where

import Data.List (intercalate)

data Term = Term {coefficient :: Int, variable :: [String]} deriving (Eq)
data Expression = Expression [Term]

getVariable :: Term -> [String]
getVariable (Term a xs) = xs

addTerm :: Term -> Term -> Term
(Term a xs) `addTerm` (Term b ys) 
    | xs == ys = Term (a+b) xs
    | otherwise = Term 0 [""]

addLikeTermsInExpression :: Expression -> Expression -> Expression
(Expression xs) `addLikeTermsInExpression` (Expression ys) = Expression ([term1 `addTerm` term2 | term1 <- xs, term2 <- ys, (term1 `addTerm` term2) /= zeroTerm]) where 
    zeroTerm = Term 0 [""]

instance Show Term where
    show (Term coeff vars) = show coeff ++ intercalate "" ["(" ++ (x) ++ ")" | x <- vars]

instance Show Expression where
    show (Expression xs) = intercalate " + " [show x | x <- xs]
