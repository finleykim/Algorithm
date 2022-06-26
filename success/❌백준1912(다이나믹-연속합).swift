//
//  백준1912(다이나믹-연속합).swift
//  algorithm
//
//  Created by Finley on 2022/06/26.
//

import Foundation

let testCase = Int(readLine()!)!
let line = readLine()!.split(separator: " ").map{Int(String($0))!}
var indexArr = [1]
var indexElement = 1
var resultArr = [Int]()

for i in 0..<testCase{
    for j in 0..<indexArr.count{
        resultArr.append(i + line[indexArr[j]])
        for _ in 0..<testCase{
            indexElement += 1
            indexArr.append(indexElement)
        }
       
    }
}

print(max(resultArr)!)
