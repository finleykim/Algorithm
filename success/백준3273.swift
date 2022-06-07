//
//  백준3273.swift
//  algorithm
//
//  Created by Finley on 2022/06/07.
//



import Foundation

let n = Int(readLine()!)!
let arr = Array(readLine()!.split(separator: " ").map{Int(String($0))!}.sorted())
let x = Int(readLine()!)!


var left = 0
var right = n - 1
var result = 0

while left < right {
    let a = arr[left]
    let b = arr[right]
    if x == a + b {
        right -= 1
        left += 1
        result += 1
    }else if x < a + b {
        right -= 1
    }else{
        left += 1
    }
}


print(result)
