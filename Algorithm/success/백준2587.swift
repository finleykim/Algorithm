//
//  10871.swift
//  Algorithm
//
//  Created by Finley on 2022/06/02.
//

import Foundation


let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let value = String(a * b * c)
var arr : [Int] = Array(repeating: 0, count: 10)

for i in value {
    arr[Int(String(i))!] += 1
}

//print(arr.map({String($0)}).joined(separator: "\n"))

for i in arr{
    print(i)
}
