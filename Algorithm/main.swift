//
//  백준2178.swift
//  algorithm
//
//  Created by Finley on 2022/06/08.


import Foundation

func solution(_ numbers: [Int], _ hand: String) -> String{
    
    var result = [Character]
    var left = "-10"
    var right = "10"
    
    for i in 0..<numbers.count{
        switch numbers[i]{
        case 1 || 4 || 7 :
            result.append("L")
            left == numbers[i]
        case 3 || 6 || 9 :
            result.append("R")
            right == numbers[i]
        case 2 || 5 || 8 || 0 && i != 0 :
            if numbers[i] - left > right - numbers[i]{
                result.append("R")
                right == numbers[i]
            } else if numbers[i] - left < right - numbers[i]{
                result.append("L")
                left == numbers[i]
            } else if numbers[i] - left == right - numbers[i] && hand == "right"{
                result.append("R")
                right == numbers[i]
            } else if numbers[i] - left == right - numbers[i] && hand == "left"{
                result.append("L")
                left == numbers[i]
            }
        default: result.append("e")
        }
    }
        
    
    
    
    return ""
}
