import qualified General.Expression as Exp
import qualified LinearAlgebra.Vectors as Vec

main :: IO ()
main = do
    let v1 = Vec.Vector [1,2,3,4]
    let v2 = Vec.Vector [0,7,13,7]
    let v5 = Vec.Vector [4,2,7,43]
    let v6 = Vec.Vector [8,32,56,3]

    let u0 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a"]],Exp.Expression [Exp.Term 1 ["b"]]]

    let testVector0 = Vec.Vector [Exp.Expression [Exp.Term 3 ["a"]],Exp.Expression [Exp.Term 7 ["b"]]]

    let u1 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a1"]],Exp.Expression [Exp.Term 1 ["a2"]],Exp.Expression [Exp.Term 1 ["a3"]]]
    let u2 = Vec.Vector [Exp.Expression [Exp.Term 1 ["b1"]],Exp.Expression [Exp.Term 1 ["b2"]],Exp.Expression [Exp.Term 1 ["b3"]]]

    let testVector1 = Vec.Vector [Exp.Expression [Exp.Term 2 ["a1"]],Exp.Expression [Exp.Term 9 ["a2"]],Exp.Expression [Exp.Term 11 ["a3"]]]

    let u3 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a1"]],Exp.Expression [Exp.Term 1 ["a2"]],Exp.Expression [Exp.Term 1 ["a3"]],Exp.Expression [Exp.Term 1 ["a4"]]]
    let u4 = Vec.Vector [Exp.Expression [Exp.Term 1 ["b1"]],Exp.Expression [Exp.Term 1 ["b2"]],Exp.Expression [Exp.Term 1 ["b3"]],Exp.Expression [Exp.Term 1 ["b4"]]]
    let u5 = Vec.Vector [Exp.Expression [Exp.Term 1 ["c1"]],Exp.Expression [Exp.Term 1 ["c2"]],Exp.Expression [Exp.Term 1 ["c3"]],Exp.Expression [Exp.Term 1 ["c4"]]]

    let testVector2 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a1"]],Exp.Expression [Exp.Term 3 ["a2"]],Exp.Expression [Exp.Term 4 ["a3"]],Exp.Expression [Exp.Term 485 ["a4"]]]

    let u6 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a1"]],Exp.Expression [Exp.Term 1 ["a2"]],Exp.Expression [Exp.Term 1 ["a3"]],Exp.Expression [Exp.Term 1 ["a4"]],Exp.Expression [Exp.Term 1 ["a5"]]]
    let u7 = Vec.Vector [Exp.Expression [Exp.Term 1 ["b1"]],Exp.Expression [Exp.Term 1 ["b2"]],Exp.Expression [Exp.Term 1 ["b3"]],Exp.Expression [Exp.Term 1 ["b4"]],Exp.Expression [Exp.Term 1 ["b5"]]]
    let u8 = Vec.Vector [Exp.Expression [Exp.Term 1 ["c1"]],Exp.Expression [Exp.Term 1 ["c2"]],Exp.Expression [Exp.Term 1 ["c3"]],Exp.Expression [Exp.Term 1 ["c4"]],Exp.Expression [Exp.Term 1 ["c5"]]]
    let u9 = Vec.Vector [Exp.Expression [Exp.Term 1 ["d1"]],Exp.Expression [Exp.Term 1 ["d2"]],Exp.Expression [Exp.Term 1 ["d3"]],Exp.Expression [Exp.Term 1 ["d4"]],Exp.Expression [Exp.Term 1 ["d5"]]]
    
    let testVector3 = Vec.Vector [Exp.Expression [Exp.Term 6 ["a1"]],Exp.Expression [Exp.Term 8 ["a2"]],Exp.Expression [Exp.Term 9 ["a3"]],Exp.Expression [Exp.Term 4 ["a4"]],Exp.Expression [Exp.Term 17 ["a5"]]]

    let u10 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a1"]],Exp.Expression [Exp.Term 1 ["a2"]],Exp.Expression [Exp.Term 1 ["a3"]],Exp.Expression [Exp.Term 1 ["a4"]],Exp.Expression [Exp.Term 1 ["a5"]],Exp.Expression [Exp.Term 1 ["a6"]]]
    let u11 = Vec.Vector [Exp.Expression [Exp.Term 1 ["b1"]],Exp.Expression [Exp.Term 1 ["b2"]],Exp.Expression [Exp.Term 1 ["b3"]],Exp.Expression [Exp.Term 1 ["b4"]],Exp.Expression [Exp.Term 1 ["b5"]],Exp.Expression [Exp.Term 1 ["b6"]]]
    let u12 = Vec.Vector [Exp.Expression [Exp.Term 1 ["c1"]],Exp.Expression [Exp.Term 1 ["c2"]],Exp.Expression [Exp.Term 1 ["c3"]],Exp.Expression [Exp.Term 1 ["c4"]],Exp.Expression [Exp.Term 1 ["c5"]],Exp.Expression [Exp.Term 1 ["c6"]]]
    let u13 = Vec.Vector [Exp.Expression [Exp.Term 1 ["d1"]],Exp.Expression [Exp.Term 1 ["d2"]],Exp.Expression [Exp.Term 1 ["d3"]],Exp.Expression [Exp.Term 1 ["d4"]],Exp.Expression [Exp.Term 1 ["d5"]],Exp.Expression [Exp.Term 1 ["d6"]]]
    let u14 = Vec.Vector [Exp.Expression [Exp.Term 1 ["e1"]],Exp.Expression [Exp.Term 1 ["e2"]],Exp.Expression [Exp.Term 1 ["e3"]],Exp.Expression [Exp.Term 1 ["e4"]],Exp.Expression [Exp.Term 1 ["e5"]],Exp.Expression [Exp.Term 1 ["e6"]]]

    let testVector4 = Vec.Vector [Exp.Expression [Exp.Term 3 ["a1"]],Exp.Expression [Exp.Term 9 ["a2"]],Exp.Expression [Exp.Term 5 ["a3"]],Exp.Expression [Exp.Term 18 ["a4"]],Exp.Expression [Exp.Term 72 ["a5"]],Exp.Expression [Exp.Term 13 ["a6"]]]

    let u15 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a1"]],Exp.Expression [Exp.Term 1 ["a2"]],Exp.Expression [Exp.Term 1 ["a3"]],Exp.Expression [Exp.Term 1 ["a4"]],Exp.Expression [Exp.Term 1 ["a5"]],Exp.Expression [Exp.Term 1 ["a6"]],Exp.Expression [Exp.Term 1 ["a7"]]]
    let u16 = Vec.Vector [Exp.Expression [Exp.Term 1 ["b1"]],Exp.Expression [Exp.Term 1 ["b2"]],Exp.Expression [Exp.Term 1 ["b3"]],Exp.Expression [Exp.Term 1 ["b4"]],Exp.Expression [Exp.Term 1 ["b5"]],Exp.Expression [Exp.Term 1 ["b6"]],Exp.Expression [Exp.Term 1 ["b7"]]]
    let u17 = Vec.Vector [Exp.Expression [Exp.Term 1 ["c1"]],Exp.Expression [Exp.Term 1 ["c2"]],Exp.Expression [Exp.Term 1 ["c3"]],Exp.Expression [Exp.Term 1 ["c4"]],Exp.Expression [Exp.Term 1 ["c5"]],Exp.Expression [Exp.Term 1 ["c6"]],Exp.Expression [Exp.Term 1 ["c7"]]]
    let u18 = Vec.Vector [Exp.Expression [Exp.Term 1 ["d1"]],Exp.Expression [Exp.Term 1 ["d2"]],Exp.Expression [Exp.Term 1 ["d3"]],Exp.Expression [Exp.Term 1 ["d4"]],Exp.Expression [Exp.Term 1 ["d5"]],Exp.Expression [Exp.Term 1 ["d6"]],Exp.Expression [Exp.Term 1 ["d7"]]]
    let u19 = Vec.Vector [Exp.Expression [Exp.Term 1 ["e1"]],Exp.Expression [Exp.Term 1 ["e2"]],Exp.Expression [Exp.Term 1 ["e3"]],Exp.Expression [Exp.Term 1 ["e4"]],Exp.Expression [Exp.Term 1 ["e5"]],Exp.Expression [Exp.Term 1 ["e6"]],Exp.Expression [Exp.Term 1 ["e7"]]]
    let u20 = Vec.Vector [Exp.Expression [Exp.Term 1 ["f1"]],Exp.Expression [Exp.Term 1 ["f2"]],Exp.Expression [Exp.Term 1 ["f3"]],Exp.Expression [Exp.Term 1 ["f4"]],Exp.Expression [Exp.Term 1 ["f5"]],Exp.Expression [Exp.Term 1 ["f6"]],Exp.Expression [Exp.Term 1 ["f7"]]]

    let testVector5 = Vec.Vector [Exp.Expression [Exp.Term 4 ["a1"]],Exp.Expression [Exp.Term 14 ["a2"]],Exp.Expression [Exp.Term 16 ["a3"]],Exp.Expression [Exp.Term 25 ["a4"]],Exp.Expression [Exp.Term 19 ["a5"]],Exp.Expression [Exp.Term 82 ["a6"]],Exp.Expression [Exp.Term 5 ["a7"]]]

    let u21 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a1"]],Exp.Expression [Exp.Term 1 ["a2"]],Exp.Expression [Exp.Term 1 ["a3"]],Exp.Expression [Exp.Term 1 ["a4"]],Exp.Expression [Exp.Term 1 ["a5"]],Exp.Expression [Exp.Term 1 ["a6"]],Exp.Expression [Exp.Term 1 ["a7"]],Exp.Expression [Exp.Term 1 ["a8"]]]
    let u22 = Vec.Vector [Exp.Expression [Exp.Term 1 ["b1"]],Exp.Expression [Exp.Term 1 ["b2"]],Exp.Expression [Exp.Term 1 ["b3"]],Exp.Expression [Exp.Term 1 ["b4"]],Exp.Expression [Exp.Term 1 ["b5"]],Exp.Expression [Exp.Term 1 ["b6"]],Exp.Expression [Exp.Term 1 ["b7"]],Exp.Expression [Exp.Term 1 ["b8"]]]
    let u23 = Vec.Vector [Exp.Expression [Exp.Term 1 ["c1"]],Exp.Expression [Exp.Term 1 ["c2"]],Exp.Expression [Exp.Term 1 ["c3"]],Exp.Expression [Exp.Term 1 ["c4"]],Exp.Expression [Exp.Term 1 ["c5"]],Exp.Expression [Exp.Term 1 ["c6"]],Exp.Expression [Exp.Term 1 ["c7"]],Exp.Expression [Exp.Term 1 ["c8"]]]
    let u24 = Vec.Vector [Exp.Expression [Exp.Term 1 ["d1"]],Exp.Expression [Exp.Term 1 ["d2"]],Exp.Expression [Exp.Term 1 ["d3"]],Exp.Expression [Exp.Term 1 ["d4"]],Exp.Expression [Exp.Term 1 ["d5"]],Exp.Expression [Exp.Term 1 ["d6"]],Exp.Expression [Exp.Term 1 ["d7"]],Exp.Expression [Exp.Term 1 ["d8"]]]
    let u25 = Vec.Vector [Exp.Expression [Exp.Term 1 ["e1"]],Exp.Expression [Exp.Term 1 ["e2"]],Exp.Expression [Exp.Term 1 ["e3"]],Exp.Expression [Exp.Term 1 ["e4"]],Exp.Expression [Exp.Term 1 ["e5"]],Exp.Expression [Exp.Term 1 ["e6"]],Exp.Expression [Exp.Term 1 ["e7"]],Exp.Expression [Exp.Term 1 ["e8"]]]
    let u26 = Vec.Vector [Exp.Expression [Exp.Term 1 ["f1"]],Exp.Expression [Exp.Term 1 ["f2"]],Exp.Expression [Exp.Term 1 ["f3"]],Exp.Expression [Exp.Term 1 ["f4"]],Exp.Expression [Exp.Term 1 ["f5"]],Exp.Expression [Exp.Term 1 ["f6"]],Exp.Expression [Exp.Term 1 ["f7"]],Exp.Expression [Exp.Term 1 ["f8"]]]
    let u27 = Vec.Vector [Exp.Expression [Exp.Term 1 ["g1"]],Exp.Expression [Exp.Term 1 ["g2"]],Exp.Expression [Exp.Term 1 ["g3"]],Exp.Expression [Exp.Term 1 ["g4"]],Exp.Expression [Exp.Term 1 ["g5"]],Exp.Expression [Exp.Term 1 ["g6"]],Exp.Expression [Exp.Term 1 ["g7"]],Exp.Expression [Exp.Term 1 ["g8"]]]

    let testVector6 = Vec.Vector [Exp.Expression [Exp.Term 3 ["a1"]],Exp.Expression [Exp.Term 12 ["a2"]],Exp.Expression [Exp.Term 1 ["a3"]],Exp.Expression [Exp.Term 23 ["a4"]],Exp.Expression [Exp.Term 5 ["a5"]],Exp.Expression [Exp.Term 7 ["a6"]],Exp.Expression [Exp.Term 9 ["a7"]],Exp.Expression [Exp.Term 3 ["a8"]]]

    let u28 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a1"]],Exp.Expression [Exp.Term 1 ["a2"]],Exp.Expression [Exp.Term 1 ["a3"]],Exp.Expression [Exp.Term 1 ["a4"]],Exp.Expression [Exp.Term 1 ["a5"]],Exp.Expression [Exp.Term 1 ["a6"]],Exp.Expression [Exp.Term 1 ["a7"]],Exp.Expression [Exp.Term 1 ["a8"]],Exp.Expression [Exp.Term 1 ["a9"]]]
    let u29 = Vec.Vector [Exp.Expression [Exp.Term 1 ["b1"]],Exp.Expression [Exp.Term 1 ["b2"]],Exp.Expression [Exp.Term 1 ["b3"]],Exp.Expression [Exp.Term 1 ["b4"]],Exp.Expression [Exp.Term 1 ["b5"]],Exp.Expression [Exp.Term 1 ["b6"]],Exp.Expression [Exp.Term 1 ["b7"]],Exp.Expression [Exp.Term 1 ["b8"]],Exp.Expression [Exp.Term 1 ["b9"]]]
    let u30 = Vec.Vector [Exp.Expression [Exp.Term 1 ["c1"]],Exp.Expression [Exp.Term 1 ["c2"]],Exp.Expression [Exp.Term 1 ["c3"]],Exp.Expression [Exp.Term 1 ["c4"]],Exp.Expression [Exp.Term 1 ["c5"]],Exp.Expression [Exp.Term 1 ["c6"]],Exp.Expression [Exp.Term 1 ["c7"]],Exp.Expression [Exp.Term 1 ["c8"]],Exp.Expression [Exp.Term 1 ["c9"]]]
    let u31 = Vec.Vector [Exp.Expression [Exp.Term 1 ["d1"]],Exp.Expression [Exp.Term 1 ["d2"]],Exp.Expression [Exp.Term 1 ["d3"]],Exp.Expression [Exp.Term 1 ["d4"]],Exp.Expression [Exp.Term 1 ["d5"]],Exp.Expression [Exp.Term 1 ["d6"]],Exp.Expression [Exp.Term 1 ["d7"]],Exp.Expression [Exp.Term 1 ["d8"]],Exp.Expression [Exp.Term 1 ["d9"]]]
    let u32 = Vec.Vector [Exp.Expression [Exp.Term 1 ["e1"]],Exp.Expression [Exp.Term 1 ["e2"]],Exp.Expression [Exp.Term 1 ["e3"]],Exp.Expression [Exp.Term 1 ["e4"]],Exp.Expression [Exp.Term 1 ["e5"]],Exp.Expression [Exp.Term 1 ["e6"]],Exp.Expression [Exp.Term 1 ["e7"]],Exp.Expression [Exp.Term 1 ["e8"]],Exp.Expression [Exp.Term 1 ["e9"]]]
    let u33 = Vec.Vector [Exp.Expression [Exp.Term 1 ["f1"]],Exp.Expression [Exp.Term 1 ["f2"]],Exp.Expression [Exp.Term 1 ["f3"]],Exp.Expression [Exp.Term 1 ["f4"]],Exp.Expression [Exp.Term 1 ["f5"]],Exp.Expression [Exp.Term 1 ["f6"]],Exp.Expression [Exp.Term 1 ["f7"]],Exp.Expression [Exp.Term 1 ["f8"]],Exp.Expression [Exp.Term 1 ["f9"]]]
    let u34 = Vec.Vector [Exp.Expression [Exp.Term 1 ["g1"]],Exp.Expression [Exp.Term 1 ["g2"]],Exp.Expression [Exp.Term 1 ["g3"]],Exp.Expression [Exp.Term 1 ["g4"]],Exp.Expression [Exp.Term 1 ["g5"]],Exp.Expression [Exp.Term 1 ["g6"]],Exp.Expression [Exp.Term 1 ["g7"]],Exp.Expression [Exp.Term 1 ["g8"]],Exp.Expression [Exp.Term 1 ["g9"]]]
    let u35 = Vec.Vector [Exp.Expression [Exp.Term 1 ["h1"]],Exp.Expression [Exp.Term 1 ["h2"]],Exp.Expression [Exp.Term 1 ["h3"]],Exp.Expression [Exp.Term 1 ["h4"]],Exp.Expression [Exp.Term 1 ["h5"]],Exp.Expression [Exp.Term 1 ["h6"]],Exp.Expression [Exp.Term 1 ["h7"]],Exp.Expression [Exp.Term 1 ["h8"]],Exp.Expression [Exp.Term 1 ["h9"]]]

    let testVector7 = Vec.Vector [Exp.Expression [Exp.Term 9 ["a1"]],Exp.Expression [Exp.Term 2 ["a2"]],Exp.Expression [Exp.Term 5 ["a3"]],Exp.Expression [Exp.Term 31 ["a4"]],Exp.Expression [Exp.Term 12 ["a5"]],Exp.Expression [Exp.Term 9 ["a6"]],Exp.Expression [Exp.Term 3 ["a7"]],Exp.Expression [Exp.Term 5 ["a8"]],Exp.Expression [Exp.Term 64 ["a9"]]]

    let u36 = Vec.Vector [Exp.Expression [Exp.Term 1 ["a1"]],Exp.Expression [Exp.Term 1 ["a2"]],Exp.Expression [Exp.Term 1 ["a3"]],Exp.Expression [Exp.Term 1 ["a4"]],Exp.Expression [Exp.Term 1 ["a5"]],Exp.Expression [Exp.Term 1 ["a6"]],Exp.Expression [Exp.Term 1 ["a7"]],Exp.Expression [Exp.Term 1 ["a8"]],Exp.Expression [Exp.Term 1 ["a9"]],Exp.Expression [Exp.Term 1 ["a10"]]]
    let u37 = Vec.Vector [Exp.Expression [Exp.Term 1 ["b1"]],Exp.Expression [Exp.Term 1 ["b2"]],Exp.Expression [Exp.Term 1 ["b3"]],Exp.Expression [Exp.Term 1 ["b4"]],Exp.Expression [Exp.Term 1 ["b5"]],Exp.Expression [Exp.Term 1 ["b6"]],Exp.Expression [Exp.Term 1 ["b7"]],Exp.Expression [Exp.Term 1 ["b8"]],Exp.Expression [Exp.Term 1 ["b9"]],Exp.Expression [Exp.Term 1 ["b10"]]]
    let u38 = Vec.Vector [Exp.Expression [Exp.Term 1 ["c1"]],Exp.Expression [Exp.Term 1 ["c2"]],Exp.Expression [Exp.Term 1 ["c3"]],Exp.Expression [Exp.Term 1 ["c4"]],Exp.Expression [Exp.Term 1 ["c5"]],Exp.Expression [Exp.Term 1 ["c6"]],Exp.Expression [Exp.Term 1 ["c7"]],Exp.Expression [Exp.Term 1 ["c8"]],Exp.Expression [Exp.Term 1 ["c9"]],Exp.Expression [Exp.Term 1 ["c10"]]]
    let u39 = Vec.Vector [Exp.Expression [Exp.Term 1 ["d1"]],Exp.Expression [Exp.Term 1 ["d2"]],Exp.Expression [Exp.Term 1 ["d3"]],Exp.Expression [Exp.Term 1 ["d4"]],Exp.Expression [Exp.Term 1 ["d5"]],Exp.Expression [Exp.Term 1 ["d6"]],Exp.Expression [Exp.Term 1 ["d7"]],Exp.Expression [Exp.Term 1 ["d8"]],Exp.Expression [Exp.Term 1 ["d9"]],Exp.Expression [Exp.Term 1 ["d10"]]]
    let u40 = Vec.Vector [Exp.Expression [Exp.Term 1 ["e1"]],Exp.Expression [Exp.Term 1 ["e2"]],Exp.Expression [Exp.Term 1 ["e3"]],Exp.Expression [Exp.Term 1 ["e4"]],Exp.Expression [Exp.Term 1 ["e5"]],Exp.Expression [Exp.Term 1 ["e6"]],Exp.Expression [Exp.Term 1 ["e7"]],Exp.Expression [Exp.Term 1 ["e8"]],Exp.Expression [Exp.Term 1 ["e9"]],Exp.Expression [Exp.Term 1 ["e10"]]]
    let u41 = Vec.Vector [Exp.Expression [Exp.Term 1 ["f1"]],Exp.Expression [Exp.Term 1 ["f2"]],Exp.Expression [Exp.Term 1 ["f3"]],Exp.Expression [Exp.Term 1 ["f4"]],Exp.Expression [Exp.Term 1 ["f5"]],Exp.Expression [Exp.Term 1 ["f6"]],Exp.Expression [Exp.Term 1 ["f7"]],Exp.Expression [Exp.Term 1 ["f8"]],Exp.Expression [Exp.Term 1 ["f9"]],Exp.Expression [Exp.Term 1 ["f10"]]]
    let u42 = Vec.Vector [Exp.Expression [Exp.Term 1 ["g1"]],Exp.Expression [Exp.Term 1 ["g2"]],Exp.Expression [Exp.Term 1 ["g3"]],Exp.Expression [Exp.Term 1 ["g4"]],Exp.Expression [Exp.Term 1 ["g5"]],Exp.Expression [Exp.Term 1 ["g6"]],Exp.Expression [Exp.Term 1 ["g7"]],Exp.Expression [Exp.Term 1 ["g8"]],Exp.Expression [Exp.Term 1 ["g9"]],Exp.Expression [Exp.Term 1 ["g10"]]]
    let u43 = Vec.Vector [Exp.Expression [Exp.Term 1 ["h1"]],Exp.Expression [Exp.Term 1 ["h2"]],Exp.Expression [Exp.Term 1 ["h3"]],Exp.Expression [Exp.Term 1 ["h4"]],Exp.Expression [Exp.Term 1 ["h5"]],Exp.Expression [Exp.Term 1 ["h6"]],Exp.Expression [Exp.Term 1 ["h7"]],Exp.Expression [Exp.Term 1 ["h8"]],Exp.Expression [Exp.Term 1 ["h9"]],Exp.Expression [Exp.Term 1 ["h10"]]]
    let u44 = Vec.Vector [Exp.Expression [Exp.Term 1 ["i1"]],Exp.Expression [Exp.Term 1 ["i2"]],Exp.Expression [Exp.Term 1 ["i3"]],Exp.Expression [Exp.Term 1 ["i4"]],Exp.Expression [Exp.Term 1 ["i5"]],Exp.Expression [Exp.Term 1 ["i6"]],Exp.Expression [Exp.Term 1 ["i7"]],Exp.Expression [Exp.Term 1 ["i8"]],Exp.Expression [Exp.Term 1 ["i9"]],Exp.Expression [Exp.Term 1 ["i10"]]]

    let testVector8 = Vec.Vector [Exp.Expression [Exp.Term 6 ["a1"]],Exp.Expression [Exp.Term 3 ["a2"]],Exp.Expression [Exp.Term 6 ["a3"]],Exp.Expression [Exp.Term 13 ["a4"]],Exp.Expression [Exp.Term 9 ["a5"]],Exp.Expression [Exp.Term 8 ["a6"]],Exp.Expression [Exp.Term 3 ["a7"]],Exp.Expression [Exp.Term 15 ["a8"]],Exp.Expression [Exp.Term 5 ["a9"]],Exp.Expression [Exp.Term 17 ["a10"]]]

    print $ "--------NOW TESTING DIMENSION 2--------"
    print $ "Let u0 = " ++ (show) u0  
    print $ "Crossy(u0) is: " ++ (show) ((Vec.crossyExpression [u0]))
    print $ "The dot product of u0 and crossy(u0) is: " ++ (show) (u0 `Vec.dotProductExpression` (Vec.crossyExpression [u0]))
    print $ "Let testVector0 = " ++ (show) testVector0
    print $ "The dot product of testVector0 and crossy(u0) is: " ++ (show) (testVector0 `Vec.dotProductExpression` (Vec.crossyExpression [u0]))
    print $ "--------NOW TESTING DIMENSION 3--------"
    print $ "Let u1 = " ++ (show) u1  
    print $ "Let u2 = " ++ (show) u2  
    print $ "Crossy(u1,u2) is: " ++ (show) ((Vec.crossyExpression [u1,u2]))
    print $ "The dot product of u1 and crossy(u1,u2) is: " ++ (show) (u1 `Vec.dotProductExpression` (Vec.crossyExpression [u1,u2]))
    print $ "The dot product of u2 and crossy(u1,u2) is: " ++ (show) (u2 `Vec.dotProductExpression` (Vec.crossyExpression [u1,u2]))
    print $ "Let testVector1 = " ++ (show) testVector1
    print $ "The dot product of testVector1 and crossy(u1,u2) is: "++ (show) (testVector1 `Vec.dotProductExpression` (Vec.crossyExpression [u1,u2]))
    print $ "--------NOW TESTING DIMENSION 4--------"
    print $ "Let u3 = " ++ (show) u3
    print $ "Let u4 = " ++ (show) u4
    print $ "Let u5 = " ++ (show) u5
    print $ "Crossy(u3,u4,u5) is: " ++ (show) ((Vec.crossyExpression [u3,u4,u5]))
    print $ "The dot product of u3 and crossy(u3,u4,u5) is: " ++ (show) (u3 `Vec.dotProductExpression` (Vec.crossyExpression [u3,u4,u5]))
    print $ "The dot product of u4 and crossy(u3,u4,u5) is: " ++ (show) (u4 `Vec.dotProductExpression` (Vec.crossyExpression [u3,u4,u5]))
    print $ "The dot product of u5 and crossy(u3,u4,u5) is: " ++ (show) (u5 `Vec.dotProductExpression` (Vec.crossyExpression [u3,u4,u5]))
    print $ "Let testVector2 = " ++ (show) testVector2
    print $ "The dot product of testVector2 and crossy(u3,u4,u5) is: "++ (show) (testVector2 `Vec.dotProductExpression` (Vec.crossyExpression [u3,u4,u5]))
    print $ "--------NOW TESTING DIMENSION 5--------"
    print $ "Let u6 = " ++ (show) u6
    print $ "Let u7 = " ++ (show) u7
    print $ "Let u8 = " ++ (show) u8
    print $ "Let u9 = " ++ (show) u9
    let crossDimension5 = Vec.crossyExpression [u6,u7,u8,u9]
    print $ "Crossy(u6,u7,u8,u9) is: " ++ (show) (crossDimension5)
    print $ "The dot product of u6 and crossy(u6,u7,u8,u9) is: " ++ (show) (u6 `Vec.dotProductExpression` crossDimension5)
    print $ "The dot product of u7 and crossy(u6,u7,u8,u9) is: " ++ (show) (u7 `Vec.dotProductExpression` crossDimension5)
    print $ "The dot product of u8 and crossy(u6,u7,u8,u9) is: " ++ (show) (u8 `Vec.dotProductExpression` crossDimension5)
    print $ "The dot product of u9 and crossy(u6,u7,u8,u9) is: " ++ (show) (u9 `Vec.dotProductExpression` crossDimension5)
    print $ "Let testVector3 = " ++ (show) testVector3
    print $ "The dot product of testVector3 and crossy(u6,u7,u8,u9) is: "++ (show) (testVector3 `Vec.dotProductExpression` crossDimension5)
    print $ "--------NOW TESTING DIMENSION 6--------"
    print $ "Let u10 = " ++ (show) u10
    print $ "Let u11 = " ++ (show) u11
    print $ "Let u12 = " ++ (show) u12
    print $ "Let u13 = " ++ (show) u13
    print $ "Let u14 = " ++ (show) u14
    let crossDimension6 = Vec.crossyExpression [u10,u11,u12,u13,u14]
    print $ "Crossy(u10,u11,u12,u13,u14) is: " ++ (show) (crossDimension6)
    print $ "The dot product of u10 and crossy(u10,u11,u12,u13,u14) is: " ++ (show) (u10 `Vec.dotProductExpression` crossDimension6)
    print $ "The dot product of u11 and crossy(u10,u11,u12,u13,u14) is: " ++ (show) (u11 `Vec.dotProductExpression` crossDimension6)
    print $ "The dot product of u12 and crossy(u10,u11,u12,u13,u14) is: " ++ (show) (u12 `Vec.dotProductExpression` crossDimension6)
    print $ "The dot product of u13 and crossy(u10,u11,u12,u13,u14) is: " ++ (show) (u13 `Vec.dotProductExpression` crossDimension6)
    print $ "The dot product of u14 and crossy(u10,u11,u12,u13,u14) is: " ++ (show) (u14 `Vec.dotProductExpression` crossDimension6) 
    print $ "Let testVector4 = " ++ (show) testVector4
    print $ "The dot product of testVector4 and crossy(u10,u11,u12,u13,u14) is: "++ (show) (testVector4 `Vec.dotProductExpression` crossDimension6)
    print $ "--------NOW TESTING DIMENSION 7--------"
    print $ "Let u15 = " ++ (show) u15
    print $ "Let u16 = " ++ (show) u16
    print $ "Let u17 = " ++ (show) u17
    print $ "Let u18 = " ++ (show) u18
    print $ "Let u19 = " ++ (show) u19
    print $ "Let u20 = " ++ (show) u20
    let crossDimension7 = Vec.crossyExpression [u15,u16,u17,u18,u19,u20]
    print $ "Crossy(u15,u16,u17,u18,u19,u20) is: " ++ (show) (crossDimension7)
    print $ "The dot product of u15 and crossy(u15,u16,u17,u18,u19,u20) is: " ++ (show) (u15 `Vec.dotProductExpression` crossDimension7)
    print $ "The dot product of u16 and crossy(u15,u16,u17,u18,u19,u20) is: " ++ (show) (u16 `Vec.dotProductExpression` crossDimension7)
    print $ "The dot product of u17 and crossy(u15,u16,u17,u18,u19,u20) is: " ++ (show) (u17 `Vec.dotProductExpression` crossDimension7)
    print $ "The dot product of u18 and crossy(u15,u16,u17,u18,u19,u20) is: " ++ (show) (u18 `Vec.dotProductExpression` crossDimension7)
    print $ "The dot product of u19 and crossy(u15,u16,u17,u18,u19,u20) is: " ++ (show) (u19 `Vec.dotProductExpression` crossDimension7)
    print $ "The dot product of u20 and crossy(u15,u16,u17,u18,u19,u20) is: " ++ (show) (u20 `Vec.dotProductExpression` crossDimension7)
    print $ "Let testVector5 = " ++ (show) testVector5
    print $ "The dot product of testVector5 and crossy(u15,u16,u17,u18,u19,u20) is: "++ (show) (testVector5 `Vec.dotProductExpression` crossDimension7)
    {-print $ "--------NOW TESTING DIMENSION 8--------"
    print $ "Let u21 = " ++ (show) u21
    print $ "Let u22 = " ++ (show) u22
    print $ "Let u23 = " ++ (show) u23
    print $ "Let u24 = " ++ (show) u24
    print $ "Let u25 = " ++ (show) u25
    print $ "Let u26 = " ++ (show) u26
    print $ "Let u27 = " ++ (show) u27
    let crossDimension8 = Vec.crossyExpression [u21,u22,u23,u24,u25,u26,u27]
    print $ "Crossy(u21,u22,u23,u24,u25,u26,u27) is: " ++ (show) (crossDimension8)
    print $ "The dot product of u21 and crossy(u21,u22,u23,u24,u25,u26,u27) is: " ++ (show) (u21 `Vec.dotProductExpression` crossDimension8)
    print $ "The dot product of u22 and crossy(u21,u22,u23,u24,u25,u26,u27) is: " ++ (show) (u22 `Vec.dotProductExpression` crossDimension8)
    print $ "The dot product of u23 and crossy(u21,u22,u23,u24,u25,u26,u27) is: " ++ (show) (u23 `Vec.dotProductExpression` crossDimension8)
    print $ "The dot product of u24 and crossy(u21,u22,u23,u24,u25,u26,u27) is: " ++ (show) (u24 `Vec.dotProductExpression` crossDimension8)
    print $ "The dot product of u25 and crossy(u21,u22,u23,u24,u25,u26,u27) is: " ++ (show) (u25 `Vec.dotProductExpression` crossDimension8)
    print $ "The dot product of u26 and crossy(u21,u22,u23,u24,u25,u26,u27) is: " ++ (show) (u26 `Vec.dotProductExpression` crossDimension8)
    print $ "The dot product of u27 and crossy(u21,u22,u23,u24,u25,u26,u27) is: " ++ (show) (u27 `Vec.dotProductExpression` crossDimension8)
    print $ "Let testVector6 = " ++ (show) testVector6
    print $ "The dot product of testVector6 and crossy(u21,u22,u23,u24,u25,u26,u27) is: "++ (show) (testVector6 `Vec.dotProductExpression` crossDimension8)
    print $ "--------NOW TESTING DIMENSION 9--------"
    print $ "Let u28 = " ++ (show) u28
    print $ "Let u29 = " ++ (show) u29
    print $ "Let u30 = " ++ (show) u30
    print $ "Let u31 = " ++ (show) u31
    print $ "Let u32 = " ++ (show) u32
    print $ "Let u33 = " ++ (show) u33
    print $ "Let u34 = " ++ (show) u34
    print $ "Let u35 = " ++ (show) u35
    let crossDimension9 = Vec.crossyExpression [u28,u29,u30,u31,u32,u33,u34,u35]
    print $ "Crossy(u28,u29,u30,u31,u32,u33,u34,u35) is: " ++ (show) (crossDimension9)
    print $ "The dot product of u28 and crossy(u28,u29,u30,u31,u32,u33,u34,u35) is: " ++ (show) (u28 `Vec.dotProductExpression` crossDimension9)
    print $ "The dot product of u29 and crossy(u28,u29,u30,u31,u32,u33,u34,u35) is: " ++ (show) (u29 `Vec.dotProductExpression` crossDimension9)
    print $ "The dot product of u30 and crossy(u28,u29,u30,u31,u32,u33,u34,u35) is: " ++ (show) (u30 `Vec.dotProductExpression` crossDimension9)
    print $ "The dot product of u31 and crossy(u28,u29,u30,u31,u32,u33,u34,u35) is: " ++ (show) (u31 `Vec.dotProductExpression` crossDimension9)
    print $ "The dot product of u32 and crossy(u28,u29,u30,u31,u32,u33,u34,u35) is: " ++ (show) (u32 `Vec.dotProductExpression` crossDimension9)
    print $ "The dot product of u33 and crossy(u28,u29,u30,u31,u32,u33,u34,u35) is: " ++ (show) (u33 `Vec.dotProductExpression` crossDimension9)
    print $ "The dot product of u34 and crossy(u28,u29,u30,u31,u32,u33,u34,u35) is: " ++ (show) (u34 `Vec.dotProductExpression` crossDimension9)
    print $ "The dot product of u35 and crossy(u28,u29,u30,u31,u32,u33,u34,u35) is: " ++ (show) (u35 `Vec.dotProductExpression` crossDimension9)
    print $ "Let testVector7 = " ++ (show) testVector7
    print $ "The dot product of testVector7 and crossy(u28,u29,u30,u31,u32,u33,u34,u35) is: "++ (show) (testVector7 `Vec.dotProductExpression` crossDimension9)
    print $ "--------NOW TESTING DIMENSION 10--------"
    print $ "Let u36 = " ++ (show) u36
    print $ "Let u37 = " ++ (show) u37
    print $ "Let u38 = " ++ (show) u38
    print $ "Let u39 = " ++ (show) u39
    print $ "Let u40 = " ++ (show) u40
    print $ "Let u41 = " ++ (show) u41
    print $ "Let u42 = " ++ (show) u42
    print $ "Let u43 = " ++ (show) u43
    print $ "Let u44 = " ++ (show) u44
    let crossDimension10 = Vec.crossyExpression [u36,u37,u38,u39,u40,u41,u42,u43,u44]
    print $ "Crossy(u36,u37,u38,u39,u40,u41,u42,u43,u44) is: " ++ (show) (crossDimension10)
    print $ "The dot product of u36 and crossy(u36,u37,u38,u39,u40,u41,u42,u43,u44) is: " ++ (show) (u36 `Vec.dotProductExpression` crossDimension10)
    print $ "The dot product of u37 and crossy(u36,u37,u38,u39,u40,u41,u42,u43,u44) is: " ++ (show) (u37 `Vec.dotProductExpression` crossDimension10)
    print $ "The dot product of u38 and crossy(u36,u37,u38,u39,u40,u41,u42,u43,u44) is: " ++ (show) (u38 `Vec.dotProductExpression` crossDimension10)
    print $ "The dot product of u39 and crossy(u36,u37,u38,u39,u40,u41,u42,u43,u44) is: " ++ (show) (u39 `Vec.dotProductExpression` crossDimension10)
    print $ "The dot product of u40 and crossy(u36,u37,u38,u39,u40,u41,u42,u43,u44) is: " ++ (show) (u40 `Vec.dotProductExpression` crossDimension10)
    print $ "The dot product of u41 and crossy(u36,u37,u38,u39,u40,u41,u42,u43,u44) is: " ++ (show) (u41 `Vec.dotProductExpression` crossDimension10)
    print $ "The dot product of u42 and crossy(u36,u37,u38,u39,u40,u41,u42,u43,u44) is: " ++ (show) (u42 `Vec.dotProductExpression` crossDimension10)
    print $ "The dot product of u43 and crossy(u36,u37,u38,u39,u40,u41,u42,u43,u44) is: " ++ (show) (u43 `Vec.dotProductExpression` crossDimension10)
    print $ "The dot product of u44 and crossy(u36,u37,u38,u39,u40,u41,u42,u43,u44) is: " ++ (show) (u44 `Vec.dotProductExpression` crossDimension10)
    print $ "Let testVector8 = " ++ (show) testVector8
    print $ "The dot product of testVector8 and crossy(u36,u37,u38,u39,u40,u41,u42,u43,u44) is: "++ (show) (testVector7 `Vec.dotProductExpression` crossDimension10)-}

