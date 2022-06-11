//
//  백준2178.swift
//  algorithm
//
//  Created by Finley on 2022/06/08.
//

import Foundation
func boundaryCheck(_ x: Int, _ y: Int) -> Bool{
    return (0 <= x && x < n && 0 <= y && y < m) ? true : false
} //x는 n보다 작은 양수, y는 m보다 작은 양수. 즉 도착지점에 아직 도착하기 전까지는 true임


let destination : [Int] = readLine()!.split(separator: " ").map{Int($0)!} //도착지점 좌표
let n = destination[0] //도착지점 좌표 중 x
let m = destination[1] //도착지점 좌표 중 y
let dx = [0, 0, -1, 1]
let dy = [1, -1, 0, 0] //변경위치 정의 (동서남북)
var matrix = [[Int]](repeating: [Int](repeating:0, count: m), count: n) //미로 초기화
var visited = [[Int]](repeating: [Int](repeating:0, count: m), count: n) //0으로만 이뤄진 미로배열
var queue = [(Int, Int)]() //이미 방문한 노드의 좌표
var result = 0


for _ in 0..<n{
    matrix.append(readLine()!.map{Int(String($0))!})
} //미로채우기

visited[0][0] = 1 //시작지점(좌표 0,0)은 1임
queue.append((0,0)) //시작점은 그냥 바로 방문한노드 배열에 넣어벼려

while !queue.isEmpty{ //도착할 때 까지 코드진행
    let (x,y) = queue.removeFirst() //큐에서 첫번째노드의 좌표를 빼서 (오른쪽방향 노드를 제일 첫번째로 넣어놓음)
    
    for i in 0..<4 { //동서남북을 살펴본다.예를들어 현재 좌표가 첫번째일때 x=0, y=0임.
        let nx = x+dx[i] // [0, 0, -1, 1]
        let ny = y+dy[i] // [1, -1, 0, 0]  -> 즉 오,왼,위,아래 순서로 살펴본다.
        
        if boundaryCheck(nx,ny) && visited[nx][ny] == 0 && matrix[nx][ny] == 1{ //만약 아직 도착지점이 아니고,방문하지 않았고,동서남북에서 고른지점이 1이고
            visited[nx][ny] = visited[x][y] + 1 //0
//            queue.removeAll()
            queue.append((nx, ny)) //이동한 위치를 큐에 추가 (이번엔 얘가 while문으로 테스트할 노드임)
            
        }
        
    }
}


print(visited[n][m])
