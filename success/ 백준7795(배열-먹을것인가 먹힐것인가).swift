//
//   백준7795(배열-먹을것인가 먹힐것인가).swift
//  algorithm
//
//  Created by Finley on 2022/06/19.
//


import Foundation

let testCase = Int(readLine()!)! //TestCase의 Count
var countArr = [Int]()

for _ in 0..<testCase{
    let nm = readLine()!.split(separator: " ").map{Int(String($0))!} //A와B 배열의 Count
    let n = nm[0] //A의 Count
    let m = nm[1] //B의 Count
    let arrA = readLine()!.split(separator: " ").map{Int(String($0))!} //A배열
    let arrB = readLine()!.split(separator: " ").map{Int(String($0))!} //B배열
    var count = 0

    
    for i in 0..<n{
        for j in 0..<m{
            if arrA[i]>arrB[j]{
                count += 1
            }
        }
    }
    countArr.append(count)
}

for p in countArr{
    print(p)
}


//시간초과 ^_^..









