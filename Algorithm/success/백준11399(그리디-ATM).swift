//
//  백준11399(그리디=ATM).swift
//  algorithm
//
//  Created by Finley on 2022/07/04.
//

import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
arr.sort()
var num = 0
var result = 0

    for i in arr{
        num += i
        result += num
    }

print(result)


