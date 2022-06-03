//
//  main.swift
//  Algorithm
//
//  Created by Finley on 2022/05/31.
//

import Foundation

    

let T = Int(readLine()!)!

for _ in 0..<T{
    let p = readLine()!
    let n = Int(readLine()!)!
    let arr = readLine()!.dropFirst().dropLast().split(separator: ",").map{Int(String($0))!}
    
    var head = 0, tail = n - 1
    var isReversed = false
    var isError = false
    
    for cmd in p{
        if cmd == "D"{
            //빈배열 에러상황
            if head > tail{
                isError = true
                break
            }
            
            if isReversed{
                tail -= 1
            }else{
                head += 1
            }
        } else {
            isReversed.toggle() //isReversed의 불리언 값 반전
        }
    }
    
    if isError{
        print("error")
    } else if head > tail {
        print("[]")
    } else {
        let ans = arr[head...tail].map{String($0)}.joined(separator: ",")
        let reversAns = arr[head...tail].reversed().map{String($0)}.joined(separator: ",")
        if isReversed{
            print("["+reversAns+"]")
        } else {
            print("["+ans+"]")
        }
    }
}

