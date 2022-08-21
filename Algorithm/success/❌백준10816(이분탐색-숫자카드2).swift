//
//  백준10816(이분탐색-숫자카드2).swift
//  algorithm
//
//  Created by Finley on 2022/07/02.
//

import Foundation

let m = Int(readLine()!)!
var cardArr = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = Int(readLine()!)!
let numArr = readLine()!.split(separator: " ").map{Int(String($0))!}
cardArr.sort()


for i in numArr{
    print(binary(cardArr, i),terminator: "")
}


func binary(_ arr: [Int], _ num: Int) -> Int{
    var result = 0
    if num < arr[0]{
        return 0
    } else if num > arr[m-1]{
        return 0
    } else{
        var startPoint = 0
        var endPoint = m - 1
        let midPoint = (endPoint-startPoint)/2
        while (endPoint-midPoint)>=0{
            if midPoint == num{
                result += 1
            } else if num > midPoint{
                startPoint = midPoint + 1
            } else {
                endPoint = midPoint - 1
            }
        }
    }
    
    return result
}
    
