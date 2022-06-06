//
//  main.swift
//  Algorithm
//
//  Created by Finley on 2022/06/03.
//

import Foundation

let line = readLine()!
var alphabet : [Int] = Array(repeating: 0, count: 26)
var result = ""

for i in line{
    alphabet[Int(i.asciiValue! - 97)] += 1
}

for i in alphabet {
    result += "\(i) "
}

print(result)
