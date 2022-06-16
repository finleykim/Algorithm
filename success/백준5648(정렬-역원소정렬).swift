//
//  백준2178.swift
//  algorithm
//
//  Created by Finley on 2022/06/08.
//

import Foundation




var n = [[Int]]()
var arr = [Int]()
var arrReversed = [Int]()
var num = 0

for i in 0..<5 {
    n.append(readLine()!.split(separator: " ").map{Int(String($0))!})
    arr.append(contentsOf: n[i])
}


