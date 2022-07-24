//
//  프로그래머스(문자열압축).swift
//  algorithm
//
//  Created by Finley on 2022/07/24.
//

import Foundation


func solution(_ s:String) -> Int {
    let initialString = s.lowercased()
    var resultArr = [Int]() //결과값 저장 후 가장 작은 값 반환할 것
    var stringArr = [String]() //각 단위로 나눈 배열
    
    //초기값배열화
    var initialStringArr = [String]() //초기값배열
    for i in s.unicodeScalars{
        initialStringArr.append(String(i))
    }
    let maxUnit = initialStringArr.count / 2 //나눌 수 있는 최대단위 8
    
    for i in 1...maxUnit{ //유닛최대단위 1 2 3 4
        var index = 0
        for _ in 0..<i/maxUnit{ //횟수 4
            var unit = ""
            while index <= i{
                unit += initialStringArr[index]
                index += 1
            }
            stringArr.append(unit)
            print(stringArr)
        }
        
    }
   
    

    
    
    
    
    
    
    return 0
}

solution("aabbaccc")

//https://velog.io/@focusonmx/프로그래머스-신규-아이디-추천
