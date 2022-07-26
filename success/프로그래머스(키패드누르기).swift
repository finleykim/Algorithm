//
//  프로그래머스(키패드누르기).swift
//  algorithm
//
//  Created by Finley on 2022/07/26.
//

import Foundation

func solution(_ numbers: [Int], _ hand: String) -> String{
    
    enum KeypadHand{
        case left
        case right
    }
    
  
    var left = 10
    var right = 12
    var result = ""
    var tabHand: KeypadHand = .left
    

    
    for i in 0..<numbers.count{

        
        let number = numbers[i] == 0 ? 11 : numbers[i]

        
        //숫자별로계산

        
        switch number{
        case 1,4,7: tabHand = .left
        case 3,6,9: tabHand = .right
        case 2,5,8,11:
            var leftgap = (number - left).magnitude
            var rightgap = (number - right).magnitude
            
            leftgap = (leftgap / 3) + (leftgap % 3)
            rightgap = (rightgap / 3) + (rightgap % 3)
            
            if leftgap == rightgap{
                tabHand = hand == "left" ? .left : .right
            } else {
                tabHand = rightgap > leftgap ? .left : .right
            }
            
        default: break
        }
        
        if tabHand == .left{
            result.append("L")
            left = number
        } else {
            result.append("R")
            right = number
        }

    }
    


    return result
}

print(solution([7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2], "left"))
