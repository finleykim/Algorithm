

//
//  백준2178.swift
//  algorithm
//
//  Created by Finley on 2022/06/08.
//

import Foundation

let testCase = Int(readLine()!)!
var lineArr = [[String]]()
var arr = [String]()


for _ in 0..<testCase{
    lineArr.append(readLine()!.split(separator: " ").map{String($0)})
}

for i in lineArr{
    arr = i.map{String($0)}
}


print(arr)


/*
 각각 chracter배열 만들어서 배열.count로 정렬하려고했는데 실패해씁니다...
 */






