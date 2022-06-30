//
//  백준2178.swift
//  algorithm
//
//  Created by Finley on 2022/06/08.
//

import Foundation



let firstCount = Int(readLine()!)!
var firstArr = readLine()!.split(separator: " ").map{Int(String($0))!}
let secondCount = Int(readLine()!)!
let secondArr = readLine()!.split(separator: " ").map{Int(String($0))!}
var index = 0

func quickSort(_ array: [Int]) -> [Int] {
    guard let first = array.first, array.count > 1 else { return array }
 
    let pivot = first
    let left = array.filter { $0 < pivot }
    let right = array.filter { $0 > pivot }
    
    return quickSort(left) + [pivot] + quickSort(right)
}

firstArr = quickSort(firstArr)
 

for i in 0..<secondCount{

    func binarySearch(_ arr: [Int], num: Int) -> Int{
        
        if arr.count == 1 {
            return arr[0] == num ? 1 : 0
        }
        
        let mid = arr.count / 2
        let range = arr[mid] > num ? (0..<mid) : ((mid+1)..<arr.count)
        
        return binarySearch(Array(arr[range]), num: secondArr[i])
    }
    
    print(binarySearch(firstArr, num: secondArr[i]))
}
