import qualified General.Expression as Exp

main :: IO ()
main = do
    let zeroTerm = Exp.Term 0 [""]
    let twoa1 = Exp.Term 2 ["a1"]
    let threea1 = Exp.Term 3 ["a1"]
    let threeb1 = Exp.Term 3 ["b1"]
    let nineb1 = Exp.Term 9 ["b1"]
    let tenb2 = Exp.Term 10 ["b2"]
    let exp1 = Exp.Expression [Exp.Term 2 ["a1"],Exp.Term 3 ["a1"],Exp.Term 3 ["b1"],Exp.Term 9 ["b1"],Exp.Term 10 ["b2"]]
    let exp2 = Exp.Expression [Exp.Term 0 ["a1"],Exp.Term 3 ["b1"],Exp.Term 3 ["a1"],Exp.Term 10 ["b2"],Exp.Term 9 ["b1"]]
    let exp3 = Exp.Expression [Exp.Term 2 ["a1"],Exp.Term 3 ["b1"],Exp.Term 0 [""],Exp.Term 3 ["a1"],Exp.Term 10 ["b2"],Exp.Term 9 ["b1"]]
    let exp4 = Exp.Expression [Exp.Term 0 [""],Exp.Term 2 ["a1"],Exp.Term 3 ["b1"],Exp.Term 3 ["a1"],Exp.Term 10 ["b2"],Exp.Term 9 ["b1"]]
    let exp5 = Exp.Expression [Exp.Term 7 ["a2","a1"],Exp.Term 4 ["b1","neuf"],Exp.Term 3 ["a1","a2"],Exp.Term 0 ["a"],Exp.Term 1 ["a"]]
    let exp6 = Exp.Expression [Exp.Term (4) ["neuf","b1"],Exp.Term 2 ["b7"]]
    let aPlusb = Exp.Expression [Exp.Term 1 ["a"],Exp.Term 1 ["b"]]
    let aMinusb = Exp.Expression [Exp.Term 1 ["a"],Exp.Term (-1) ["b"]]
--    print $ Exp.addTerm twoa1 threea1
--    print $ Exp.addTerm zeroTerm twoa1
--    print $ Exp.addTerm twoa1 zeroTerm
--    print $ Exp.addTerm nineb1 zeroTerm
--    print $ Exp.getRepeatedVariables exp1
--    print $ Exp.getAllVariables exp1
--    print $ Exp.simplifyLikeTerms exp1
--    print $ Exp.simplifyLikeTerms exp2
--    print $ Exp.simplifyLikeTerms exp3
--    print $ Exp.simplifyLikeTerms exp4
    print $ exp5 `Exp.addExpression` exp6
    print $ Exp.scalarMultiplyExpression 9 exp6
    print $ aPlusb `Exp.multiplyExpression` aMinusb
