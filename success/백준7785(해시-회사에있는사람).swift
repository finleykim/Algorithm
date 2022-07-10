//
//  백준7785(해시-회사에있는사람).swift
//  algorithm
//
//  Created by Finley on 2022/07/07.
//

import Foundation


var dictionary = [String: Bool]()
let testCase = Int(readLine()!)!

for _ in 0..<testCase{
    let line = readLine()!.split(separator: " ").map{String($0)}
    if line[1] == "leave"{
        dictionary[line[0]] = nil
    } else{
        dictionary[line[0]] = true
    }
}

let result = dictionary.keys.sorted(by: >)

for i in result {
    print(i)
}

for i in 0..<arr.count where arr[i] > 0{
    result.write(String(repeating: "\(i+1)\n", count: arr[i]))
}
