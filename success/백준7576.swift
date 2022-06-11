//
//  7576.swift
//  algorithm
//
//  Created by Finley on 2022/06/11.
//

import Foundation



let mn : [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = mn[0] //가로 칸의 수
let n = mn[1] //세로 칸의 수

//토마토상자 배열 만들기
var arr = [[Int]]()

for _ in 0..<n{
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

//-1과 0과 1의 갯수파악
var noneCount = 0 //아무것도 없는상자의 개수
var cookedCount = 0 //익은 토마토를 가진 상자의 개수
var uncookedCount = 0 //안익은 토마토를 가진 상자의 개수
var x좌표 = [Int]()
var y좌표 = [Int]()
var ahffk = 0


for i in 0..<arr.count{
    for j in arr[i]{
        if j == -1 {
            noneCount += 1
        } else if j == 0 {
            uncookedCount += 1
        } else {
            if (noneCount+uncookedCount)<=6{
                x좌표.append(noneCount+uncookedCount)
                cookedCount += 1
                y좌표.append(i)
            } else{
                x좌표.append((noneCount+uncookedCount+uncookedCount)%m)
                cookedCount += 1
                y좌표.append(i)
            }

        }
    }
}


print(noneCount,uncookedCount,cookedCount)
print(y좌표)
print(x좌표)

