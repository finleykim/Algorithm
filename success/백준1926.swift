//
//  백준1926.swift
//  algorithm
//
//  Created by Finley on 2022/06/07.
//

import Foundation

let nm = readLine()!.split(separator:" ").map{Int(String($0))!} //각각 Int로 변환, 배열
let n = nm[0] //세로
let m = nm[1] //가로
var arr = [[Int]]() //숫자배열

for _ in 0..<n{
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
} //세로의 수만큼 돌려서 돌릴대마다 행을 arr의 멤버로 추가



var count = 0 //그림갯수
var area = 0 //넒이
var max = 0 //최대그림크기

if n > 0{ //n(세로)가 0 이상일 경우 코드 실행
    for i in 0..<n{ //세로를 도는데,
        for j in 0..<m{ //세로
            if arr[i][j] == 1{
                area = 0
                solution(i,j)
                count += 1
                if max < area { max = area }
            }
            
        }
    }
}

func solution(_ x: Int, _ y: Int){
    if x<0 || x>=n || y<0 || y>=m || paper[x][y] != 1 { return }
    
    check[x][y]
    area += 1
    
    solution(x+1, y)
    solution(x-1, y)
    solution(x, y+1)
    solution(x, y-1)
}

