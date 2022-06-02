//
//  main.swift
//  Algorithm
//
//  Created by Finley on 2022/05/31.
//

import Foundation



var letters = readLine()!
let testCase = Int(readLine()!)!
var rightLetters = ""

for _ in 0..<testCase{
    let line = readLine()!
    
    if line == "L"{
        if !letters.isEmpty{
            rightLetters.append(letters.popLast()!)
        }
    }else if line == "B"{
        if !rightLetters.isEmpty{
            letters.append(rightLetters.popLast()!)
        }
    }else if line == "D"{
        if !letters.isEmpty{
            letters.removeLast()
        }
    }else{
        letters.append(line.last!)
    }
}

print( letters + rightLetters.reversed() )



