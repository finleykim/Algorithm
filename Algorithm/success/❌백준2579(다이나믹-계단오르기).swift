//
//  백준2579(다이나믹-계단오르기).swift
//  algorithm
//
//  Created by Finley on 2022/06/25.
//

import Foundation


let testCase = Int(readLine()!)!
var line = [Int]()
var index = 2
var selected = 0

//계단숫자를 가진 배열 'line'채우기
for _ in 0..<testCase{
    line.append(Int(readLine()!)!)
}


//맨뒤숫자가 꼭 들어가야하므로 맨뒤에서부터 탐색. 예를들어 12345면, 5 전에 있는 3과4 중 큰 숫자를 selected에 더해주고 그 값의 자리에따라 index에 숫자를더하고 호출 호출 반복하는것을 index 숫자가 배열숫자만큼 커졌을 때 (맨 앞에까지 탐색했을 때)까지 수행

while index == testCase{

func step(_ i: Int){
    selected += max(line[testCase-i], line[testCase-i-1])

    if max(line[testCase-i], line[testCase-i-1]) == line[testCase-i]{
        index += 1
    } else {
        index += 2
    }
}

    step(index)
}

print(selected + line[testCase-1])
