//
//  백준11047(그리디-동전).swift
//  algorithm
//
//  Created by Finley on 2022/06/28.
//

import Foundation

let testCase = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = testCase[0] //동전의 종류
var k = testCase[1] //금액
var line = [Int]()
var result = 0

for _ in 0..<n{
    line.append(Int(readLine()!)!)
}

line = line.reversed()

for i in line{
    if i <= k{
        result += (k / i)
        k = (k % i)
    } else if k == 0{
        break
    }
}

print(result)
