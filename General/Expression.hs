module General.Expression (
    Term (..),
    Expression (..),
    simplifyLikeTerms,
    addExpression,
    scalarMultiplyExpression,
    multiplyExpression,
) where

import Data.Function (on)
import Data.List
import Data.Maybe (isJust, isNothing)

data Term = Term {coefficient :: Int, variables :: [String]} deriving (Eq)
newtype Expression = Expression [Term]

normalizeTerm :: Term -> Term
normalizeTerm (Term a xs) = Term a (sort xs)

isZero :: Term -> Bool
isZero (Term coef _) = coef == 0

scalarMultiplyTerm :: Int -> Term -> Term
scalarMultiplyTerm a (Term b xs) = Term (a * b) xs

multiplyTerm :: Term -> Term -> Term
multiplyTerm (Term a xs) (Term b ys) = Term (a * b) (xs ++ ys)

addExpressionWithoutSimplifying :: Expression -> Expression -> Expression
addExpressionWithoutSimplifying (Expression xs) (Expression ys) = Expression (xs ++ ys)

simplifyZeroTerms :: Expression -> Expression
simplifyZeroTerms (Expression xs) = Expression ([x | x <- xs, coefficient x /= 0])

simplifyLikeTerms (Expression terms) =
    Expression . filter (not . isZero) . map sumGroup . groupTerms $ terms
  where
    groupTerms = groupBy ((==) `on` variables) . sortBy (compare `on` variables) . map normalizeTerm
    sumGroup [] = Term 0 []
    sumGroup groups@(g : _) = Term (sum $ map coefficient groups) (variables g)

addExpression :: Expression -> Expression -> Expression
addExpression a b = simplifyLikeTerms (simplifyLikeTerms a `addExpressionWithoutSimplifying` simplifyLikeTerms b)

scalarMultiplyExpression :: Int -> Expression -> Expression
scalarMultiplyExpression a (Expression xs) = simplifyZeroTerms (Expression [scalarMultiplyTerm a x | x <- xs])

multiplyExpression :: Expression -> Expression -> Expression
multiplyExpression (Expression xs) (Expression ys) = simplifyLikeTerms (Expression [x `multiplyTerm` y | x <- xs, y <- ys])

instance Show Term where
    show (Term coeff vars) = show coeff ++ intercalate "" ["(" ++ x ++ ")" | x <- vars]

instance Show Expression where
    show (Expression xs) = intercalate " + " [show x | x <- xs]
