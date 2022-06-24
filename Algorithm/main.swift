//
//  백준2178.swift
//  algorithm
//
//  Created by Finley on 2022/06/08.
//

import Foundation


let testCase = Int(readLine()!)!
var line = [[Int]]()


for _ in 0..<testCase{
    line.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 1..<testCase{
    for j in 0...i{
        if j == 0{
            line[i][j] += line[i-1][j]
        } else if j == i{
            line[i][j] += line[i-1][j-1]
        } else {
            line[i][j] += max(line[i-1][j-1],line[i-1][j])
        }
    }
}
print(line[testCase-1].max()!)



