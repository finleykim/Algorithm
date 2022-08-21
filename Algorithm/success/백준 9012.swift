//
//  백준 9012.swift
//  algorithm
//
//  Created by Finley on 2022/08/03.
//

import Foundation


let testCase = Int(readLine()!)!

for _ in 0..<testCase {

    let line = readLine()!
    var count = 0

    for char in line {
        if char == "(" {
            count += 1
        } else if char == ")" {
            count -= 1
            if count < 0 {
                break
            }
        }
    }

    if count == 0 {
        print("YES")
    } else {
        print("NO")
    }

}
