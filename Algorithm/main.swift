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
var result = [String]()


for _ in 0..<testCase{
    lineArr.append(readLine()!.split(separator: " ").map{String($0)})
}

for i in lineArr{
    for j in i {
        arr.append(j)
    }
}

let letterCounts = arr.map { $0.count }
print(letterCounts)


for g in 0..<arr.count{
        result.append(arr[letterCounts[g]])
    }

for n in result{
    print(n)
}





/*
 각각 chracter배열 만들어서 배열.count로 정렬하려고했는데 실패해씁니다...
 */

//인덱스 값을 character의 count로 바꿔보자
