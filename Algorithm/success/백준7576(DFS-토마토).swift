//
//  백준2178.swift
//  algorithm
//
//  Created by Finley on 2022/06/08.
//

import Foundation




let mn : [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = mn[0] //가로 칸의 수
let n = mn[1] //세로 칸의 수

//토마토상자 배열 만들기
var tomatoBox = [[Int]]()

for _ in 0..<n{
    tomatoBox.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}


//-1과 0과 1의 갯수파악
var noneCount = 0 //아무것도 없는상자의 개수
var cookedCount = 0 //익은 토마토를 가진 상자의 개수
var uncookedCount = 0 //안익은 토마토를 가진 상자의 개수
var x좌표 = [Int]()
var y좌표 = [Int]()
var distance = -1
let dx = [0, 0, -1, 1]
let dy = [1, -1, 0, 0]
var current = [(Int,Int)]() //현재위치

for i in 0..<tomatoBox.count{
    for j in tomatoBox[i]{
        if j == -1 {
            noneCount += 1
        } else if j == 0 {
            uncookedCount += 1
        } else {//익은 토마토 가진 상자의 개수 구하기 , 1의 위치찾기
            if (noneCount+uncookedCount)<=6{ //첫째줄일 경우
                x좌표.append(noneCount+uncookedCount)
                cookedCount += 1
                y좌표.append(i)
            } else{
                if (noneCount+uncookedCount+cookedCount+1)%m == 0{ //맨 끝에 숫자일 경우
                    x좌표.append(m-1)
                    cookedCount += 1
                    y좌표.append(i)
                }else{ //이도저도 아닐경우
                    x좌표.append((noneCount+uncookedCount+uncookedCount)%m)
                    y좌표.append(i)
                }
        }
    }
}
}

//시작지점
for i in 0..<cookedCount{
    current.append((y좌표[i],x좌표[i]))
}




//탐색

func baundaryCheck(_ x: Int, _ y: Int) -> Bool{
    return (0 <= x && x < n && 0 <= y && y < m) ? true : false
}

while !current.isEmpty{
    
    let (x,y) = current.removeFirst()
    distance += 1
    
    
        for k in 0..<4{
            let nextY = y + dy[k]
            let nextX = x + dx[k]
            
            
            if baundaryCheck(nextX,nextY) && tomatoBox[x][y] == 1 && tomatoBox[nextX][nextY] == 0{
                
                
            tomatoBox[nextX][nextY] = 1
                uncookedCount -= 1
            current.append((nextX,nextY))
                print(current)
            }
    }
    

}



if uncookedCount != 0{
    print(-1)
} else{
    print(distance)
}
