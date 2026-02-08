import qualified General.Expression as Exp
import qualified LinearAlgebra.Vectors as Vec

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
    
    let v0 = Vec.Vector [1,2]
    let v1 = Vec.Vector [1,2,3,4]
    let v2 = Vec.Vector [0,7,13,7]
    let v5 = Vec.Vector [4,2,7,43]
    let v6 = Vec.Vector [8,32,56,3]
    let v7 = Vec.Vector [1,2,3]
    let v8 = Vec.Vector [4,2,7]
    let v3 = Vec.Vector [Exp.Expression [Exp.Term 2 ["b","a"]],Exp.Expression [Exp.Term 7 ["c", "d","e"]],Exp.Expression [Exp.Term 3 ["w"]]]
    let v4 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a","b"]],Exp.Expression[Exp.Term 2 ["d", "c", "e"],Exp.Term 9 ["c","e","d"]],Exp.Expression[Exp.Term 3 ["x","y"], Exp.Term 2 ["w"]]]
    let u1 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a1"]],Exp.Expression [Exp.Term 1 ["a2"]],Exp.Expression [Exp.Term 1 ["a3"]],Exp.Expression [Exp.Term 1 ["a4"]]]
    let u2 = Vec.Vector [Exp.Expression [Exp.Term 1 ["b1"]],Exp.Expression [Exp.Term 1 ["b2"]],Exp.Expression [Exp.Term 1 ["b3"]],Exp.Expression [Exp.Term 1 ["b4"]]]
    let u3 = Vec.Vector [Exp.Expression [Exp.Term 1 ["c1"]],Exp.Expression [Exp.Term 1 ["c2"]],Exp.Expression [Exp.Term 1 ["c3"]],Exp.Expression [Exp.Term 1 ["c4"]]]
    let u4 = Vec.Vector [Exp.Expression [Exp.Term 1 ["d1"]],Exp.Expression [Exp.Term 1 ["d2"]],Exp.Expression [Exp.Term 1 ["d3"]],Exp.Expression [Exp.Term 1 ["d4"]]]
    let u0 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a"]],Exp.Expression [Exp.Term 1 ["b"]]]
    let u5 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a1"]],Exp.Expression [Exp.Term 1 ["a2"]],Exp.Expression [Exp.Term 1 ["a3"]]]
    let u6 = Vec.Vector [Exp.Expression [Exp.Term 1 ["b1"]],Exp.Expression [Exp.Term 1 ["b2"]],Exp.Expression [Exp.Term 1 ["b3"]]]
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
--    print $ exp5 `Exp.subtractExpression` exp6
--    print $ Exp.scalarMultiplyExpression 9 exp6
--    print $ aPlusb `Exp.multiplyExpression` aMinusb
    
    print $ u1 `Vec.dotProductExpression` (Vec.crossyExpression [u1,u2,u3])
    print $ u2 `Vec.dotProductExpression` (Vec.crossyExpression [u1,u2,u3])
    print $ u3 `Vec.dotProductExpression` (Vec.crossyExpression [u1,u2,u3])
    print $ u4 `Vec.dotProductExpression` (Vec.crossyExpression [u1,u2,u3])

