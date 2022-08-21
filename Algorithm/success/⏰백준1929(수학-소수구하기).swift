//
//  ⏰백준1929(수학-소수구하기).swift
//  algorithm
//
//  Created by Finley on 2022/06/30.
//

import Foundation

let testCase = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = testCase[0]
let n = testCase[1]
var result = ""
var isPrime = true


for i in m...n{ // m ~ n 모든 정수 검사
    isPrime = true
    for j in 2..<i{ //j = 2 ~ 검사중인 숫자(i)까지
        if i % j == 0{
            isPrime = false
            break
        }
    }
    if isPrime == true{
        result.write(String(i) + "\n")
    }
}

print(result)


