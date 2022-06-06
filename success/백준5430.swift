//
//  main.swift
//  Algorithm
//
//  Created by Finley on 2022/05/31.
//

import Foundation

    

let T = Int(readLine()!)! //첫째줄 테스트케이스 (몇번써먹을지)

for _ in 0..<T{
    let p = readLine()! //수항할 함수
    let n = Int(readLine()!)! //배열의 갯수
    let arr = readLine()!.dropFirst().dropLast().split(separator: ",").map{Int(String($0))!} //배열
    
    var head = 0, tail = n - 1 //첫번째자리, 마지막자리 초기화
    var isReversed = false //뒤집기
    var isError = false //에러상황 (비어있을 때)
    
    for cmd in p{
        if cmd == "D"{ //버리기
            //빈배열 에러상황
            if head > tail{ //배열갯수가 0일 때는 -1을하면 음수가 나오므로 head(0)가 더 큼
                isError = true
                break
            }
            
            if isReversed{ //D를 쳤고, isReversed가 true면
                tail -= 1
            }else{ //isReversed가 false면
                head += 1 //헤드의 자리가 원래자리의 다음자리 (+1번)자리가 됨
            }
        } else { //R을 입력하면
            isReversed.toggle() //isReversed의 불리언 값 반전(true)
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

