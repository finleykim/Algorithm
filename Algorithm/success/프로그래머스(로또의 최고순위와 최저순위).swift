//
//  프로그래머스(로또의 최고순위와 최저순위).swift
//  algorithm
//
//  Created by Finley on 2022/07/14.
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    let minwoo = lottos.sorted()
    let winNums = win_nums.sorted()
    var sameNum = 0
    var plusNum = 0
    
    
    for i in minwoo{
        if i == 0 {
            plusNum += 1
        }
        for j in winNums{
            if i == j {
                plusNum += 1
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
    
    switch plusNum{
    case 6 : plusNum = 1
    case 5 : plusNum = 2
    case 4 : plusNum = 3
    case 3 : plusNum = 4
    case 2 : plusNum = 5
    default : plusNum = 6
    }
    

    
    return [plusNum, sameNum]
}

print(solution([44,1,0,0,31,25], [31,10,45,1,6,19]))
