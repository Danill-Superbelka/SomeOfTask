//
//  main.swift
//  test
//
//  Created by Даниил  on 12.04.2021.
//

import Foundation
//while let mass: String = readLine() {
//    string += mass + "\n"
//}

let mass: String = readLine() ?? " "
if mass.isEmpty == true{
    print("nety")
} else {
    
    let splitMass = mass.components(separatedBy: " ")
    var massOut = [String](repeating: " ", count: splitMass.count)
    print(splitMass.count, "massOut", massOut)
    for var char in splitMass {
        for i in char {
            if i.isNumber {
                let num = Int(String(i))
                let index = char.firstIndex(of: i)
                char.remove(at: index!)
                massOut[num! - 1] = char
            }
        }
    }
    print(massOut.joined(separator: "\n"))
}






//let stringIn = readLine()
//let intIn = stringIn?.components(separatedBy: " ")
//let W = Int(intIn![0]) ?? 0
//let H = Int(intIn![1]) ?? 0
////var W = 4
//
////var H = 3
//var mass: [[Int]] = Array(repeating: Array(repeating: 0, count: W), count: H)
//
//func rect( m: inout [[Int]], rowMin:Int, rowMax: Int, colMin: Int, colMax: Int) -> [[Int]] {
//    for i in rowMin...rowMax{
//        for j in colMin...colMax{
//            m[i][j] += 1
//        }
//    }
//    return m
//}
//
//for rowMin in 0...H-1{
//    for rowMax in rowMin...H-1{
//        for colMin in 0...W-1{
//            for colMax in colMin...W-1{
////                mass = rect(m: &mass, rowMin: rowMin, rowMax: rowMax, colMin: colMin, colMax: colMax)
//                for i in rowMin...rowMax{
//                    for j in colMin...colMax{
//                        mass[i][j] += 1
//                    }
//                }
//            }
//        }
//
//    }
//}
//
//for i in 0...H - 1 {
//    var sRow = 0
//    for j in 0...W - 1{
//        sRow += mass[i][j]
//    }
//    print(sRow, terminator: " ")
//}
//print("")
//for j in 0...W - 1{
//    var sCol = 0
//    for i in 0...H-1{
//        sCol += mass[i][j]
//    }
//    print(sCol, terminator: " ")
//}

        
    

