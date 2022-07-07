//
//  백준7785(해시-회사에있는사람).swift
//  algorithm
//
//  Created by Finley on 2022/07/07.
//

import Foundation

var dictionary = [String: String]()
let testCase = Int(readLine()!)!
var result = [String]()

for _ in 0..<testCase{
    let line = readLine()!.split(separator: " ").map{String($0)}
    dictionary[line[0]] = line[1]
}

for i in dictionary{
    if i.value == "enter"{
        print(i.key)
    }
}
