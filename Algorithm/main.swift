//
//  백준2178.swift
//  algorithm
//
//  Created by Finley on 2022/06/08.


import Foundation

func solution(_ numbers: [Int], _ hand: String) -> String{
    
    let arr = [Character]()
    var left = 10
    var right = 10
    var leftgap = 0
    var rightgap = 0
    var result = ""
    
    for i in 0..<numbers.count{
        //gap계산
        if numbers[i] > left{
            leftgap = numbers[i] - left
        } else {
            leftgap = left - numbers[i]
        }
        
        if ( leftgap == 3 || leftgap == 8 ) && leftgap != 1{
            leftgap = 1
        }
        
        if numbers[i] > right {
            rightgap = numbers[i] - right
        } else {
            rightgap = right - numbers[i]
        }

        if ( rightgap == 3 || rightgap == 8 ) && rightgap != 9{
            rightgap = 1
        }
        
        
        //숫자별로계산
        if numbers[i] == 1 || numbers[i] == 4 || numbers[i] == 7{
            result.append("L")
            left = numbers[i]
        } else if numbers[i] == 3 || numbers[i] == 6 || numbers[i] == 9{
            result.append("R")
            right = numbers[i]
        } else if numbers[i] == 2 || numbers[i] == 5 || numbers[i] == 8 && i != 0{

            if leftgap > rightgap{
                result.append("R")
                right = numbers[i]
            } else if leftgap < rightgap{
                result.append("L")
                left = numbers[i]
            } else if leftgap == rightgap && hand == "right"{
                result.append("R")
                right = numbers[i]
            } else if leftgap == rightgap && hand == "left"{
                result.append("L")
                left = numbers[i]
            } else if leftgap == 3{
                result.append("L")
                left = numbers[i]
            } else if right == 3{
                result.append("R")
                right = numbers[i]
            } else {
            if hand == "right"{
                result.append("R")
                right = numbers[i]
            } else if hand == "left"{
                result.append("L")
                left = numbers[i]
            }
        }
        } else if numbers[i] == 0 || left == 0 || right == 0{
            if leftgap > rightgap{
                result.append("L")
                left = 0
            } else if leftgap < rightgap{
                result.append("R")
                right = 0
            } else if leftgap == rightgap{
                if hand == "right"{
                    result.append("R")
                    right = 0
                } else if hand == "left"{
                    result.append("L")
                    left = 0
                }
            }
        }
        
    }
    
    for i in arr{
        result += String(i)
    }
    
  
    
    
    return result
}

print(solution([7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2], "left"))
