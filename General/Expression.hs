module General.Expression (
    Term (..),
    Expression (..),
    addTerm,
    alphabetiseVariablesInTerm,
    alphabetiseVariablesInExpression,
    getRepeatedVariables,
    getAllVariables,
    findAddableTerms,
    findNonAddableTerms,
    simplifyLikeTerms,
    addExpression,
    scalarMultiplyExpression,
    multiplyExpression,
) where

import Data.List

data Term = Term {coefficient :: Int, variable :: [String]} deriving (Eq)
newtype Expression = Expression [Term]

alphabetiseVariablesInTerm :: Term -> Term
alphabetiseVariablesInTerm (Term a xs) = Term a (sort xs)

addTerm :: Term -> Term -> Term
(Term a xs) `addTerm` (Term b ys)
    | Term a xs == zeroTerm = Term b ys
    | Term b ys == zeroTerm = Term a xs
    | xs == ys = Term (a + b) xs
    | otherwise = zeroTerm
  where
    zeroTerm = Term 0 []

scalarMultiplyTerm :: Int -> Term -> Term
scalarMultiplyTerm a (Term b xs) = Term (a * b) xs

multiplyTerm :: Term -> Term -> Term
multiplyTerm (Term a xs) (Term b ys) = Term (a * b) (xs ++ ys)

getRepeatedVariables :: Expression -> [[String]]
getRepeatedVariables (Expression xs) = nub (variablesIncludingRepeats \\ variablesExcludingRepeats)
  where
    variablesExcludingRepeats = getAllVariables (Expression xs)
    variablesIncludingRepeats = [variable x | x <- xs]

getAllVariables :: Expression -> [[String]]
getAllVariables (Expression xs) = nub [variable x | x <- xs]

alphabetiseVariablesInExpression :: Expression -> Expression
alphabetiseVariablesInExpression (Expression xs) = Expression [alphabetiseVariablesInTerm x | x <- xs]

addExpressionWithoutSimplifying :: Expression -> Expression -> Expression
addExpressionWithoutSimplifying (Expression xs) (Expression ys) = Expression (xs ++ ys)

findAddableTerms :: Term -> Expression -> Expression
findAddableTerms a (Expression xs) = Expression [x | x <- xs, x `addTerm` a /= zeroTerm]
  where
    zeroTerm = Term 0 []

findNonAddableTerms :: Term -> Expression -> Expression
findNonAddableTerms a (Expression xs) = Expression [x | x <- xs, x `addTerm` a == zeroTerm]
  where
    zeroTerm = Term 0 []

simplifyLikeTermsWithoutZeros :: Expression -> Expression
simplifyLikeTermsWithoutZeros (Expression []) = Expression []
simplifyLikeTermsWithoutZeros (Expression [term]) = Expression [term]
simplifyLikeTermsWithoutZeros (Expression (firstTerm : xs)) = Expression [foldl addTerm firstTerm matchingTerms] `addExpressionWithoutSimplifying` simplifyLikeTermsWithoutZeros (Expression nonMatchingTerms)
  where
    zeroTerm = Term 0 []
    matchingTerms = [x | x <- xs, x `addTerm` firstTerm /= zeroTerm]
    nonMatchingTerms = xs \\ matchingTerms

simplifyZeroTerms :: Expression -> Expression
simplifyZeroTerms (Expression xs) = Expression ([x | x <- xs, coefficient x /= 0])
  where
    zeroTerm = Term 0 []

simplifyLikeTerms :: Expression -> Expression
simplifyLikeTerms a = simplifyZeroTerms (simplifyLikeTermsWithoutZeros (alphabetiseVariablesInExpression (simplifyZeroTerms a)))

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
