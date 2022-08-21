//
//  백준1978(수학-소수찾기).swift
//  algorithm
//
//  Created by Finley on 2022/06/29.
//

import Foundation

let testCase = Int(readLine()!)!
var line = readLine()!.split(separator: " ").map{Int($0)!}
var result = 0
var isPrimeNumber = true


for i in 0..<line.count{
    if line[i] == 1 {
        isPrimeNumber = false
    } else {
        for j in 2..<line[i]{
            if line[i] % j == 0{
                isPrimeNumber = false
           
            }
        }
    }
    
    if isPrimeNumber == true {
        result += 1
    }
    isPrimeNumber = true
}

print("\(result)")
