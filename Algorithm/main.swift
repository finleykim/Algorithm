//
//  백준2178.swift
//  algorithm
//
//  Created by Finley on 2022/06/08.
//

import Foundation

//정렬함수
//func selectionSort(_ array: inout [Int]){
//    for stand in 0..<(array.count - 1){
//        var minIndex = stand
//        for index in (stand + 1)..<array.count{
//            if array[index] < array[minIndex]{
//                minIndex = index
//            }
//        }
//        array.swapAt(stand, minIndex)
//    }
//}


let testCase = Int(readLine()!)! //TestCase의 Count
var arr = [Int]()
var countArr = [Int]()
var result = [Int]()
var count = 0
var onlyArr : Set<Int> = []

for _ in 0..<testCase{
    let nm = readLine()!.split(separator: " ").map{Int(String($0))!} //A와B 배열의 Count
    // let n = nm[0] //A의 Count
    // let m = nm[1] //B의 Count
    let arrA = readLine()!.split(separator: " ").map{Int(String($0))!} //A배열
    let arrB = readLine()!.split(separator: " ").map{Int(String($0))!} //B배열
    // arrA.append(contentsOf: arrB)
    countArr.append(contentsOf: arrA)
    countArr.append(contentsOf: arrB)
    
    for i in countArr{
        onlyArr.insert(i)
    }
    
    for i in onlyArr{
        if arrA.contains(i){
            for j in onlyArr{
                if j < i {
                    count += 1
                }
            }
        }
    }
    
    result.append(count)
    count = 0
}


for r in result{
    print(r)
}



    /*
     1. arrA + arrB를 오름차순으로 정렬한다
     2. arrA + arrB를 탐색해 arrA의 원소를 만나면 countArr에 Append. 한 회차에서는 중복값 배제 다음회차에서는 중복값 허용
     3. countArr의 count출력
     */






