//
//  백준2178.swift
//  algorithm
//
//  Created by Finley on 2022/06/08.
//

import Foundation

func boundaryCheck(_ x: Int, _ y: Int) -> Bool{
    return (0 <= x && x < n && 0 <= y && y < m) ? true : false
}


let destination : [Int] = readLine()!.split(separator: " ").map{Int($0)!}
let n = destination[0]
let m = destination[1]
let dx = [1, -1, 0, 0]
let dy = [0, 0, -1, 1]
var matrix = [[Int]](repeating: [Int](repeating:0, count: m), count: n)
var visited = matrix
var queue = [(Int, Int)]() //괄호가 머예여 ^_^?


for _ in 0..<n{
    matrix.append(readLine()!.map{Int(String($0))!})
}

visited[0][0] = 1
queue.append((0,0))

while !queue.isEmpty{
    let (x,y) = queue.removeFirst() //선언을 왜 저르케해여 ^_^?
    
    for i in 0..<4 {
        let nx = x+dx[i]
        let ny = y+dy[i]
        
        if boundaryCheck(nx,ny) && visited[nx][ny] == 0 && matrix[nx][ny] == 1{
            visited[nx][ny] = visited[x][y]+1
            queue.append((nx, ny))
        }
            
    }
}
