//
//  백준2178.swift
//  algorithm
//
//  Created by Finley on 2022/06/08.


import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    let minwoo = lottos.sorted()
    let winNums = win_nums.sorted()
    var sameNum = 0
    
    for i in minwoo{
        for j in winNums{
            if i < j || i > j{
                continue
            } else if i == j{
                sameNum += 1
            }
        }
    }
    
    switch sameNum{
    case 6 : sameNum = 1
    case 5 : sameNum = 2
    case 4 : sameNum = 3
    case 3 : sameNum = 4
    case 2 : sameNum = 5
    default : sameNum = 6
    }
    
    return [0, sameNum]
}

print(solution([44,1,0,0,31,25], [31,10,45,1,6,19]))

//MARK: 최대등수 맞추는 코드 넣으면 됨. 최소등수는 해쑴
