import qualified General.Expression as Exp

main :: IO ()
main = do
    let a1 = Exp.Term 2 ["a1"]
    let a2 = Exp.Term 3 ["a1"]
    let b1 = Exp.Term 3 ["b1"]
    let b7 = Exp.Term 9 ["b1"]
    let exp1 = Exp.Expression [a1,b1]
    let exp2 = Exp.Expression [a2,b7]
    print $ Exp.addTerm a1 a2
    print $ Exp.addLikeTermsInExpression exp1 exp2
