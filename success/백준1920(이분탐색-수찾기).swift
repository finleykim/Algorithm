//
//  백준1920(이분탐색-수찾기).swift
//  algorithm
//
//  Created by Finley on 2022/07/01.
//

import Foundation



let firstCount = Int(readLine()!)!
var firstArr = readLine()!.split(separator: " ").map{Int(String($0))!}
let secondCount = Int(readLine()!)!
let secondArr = readLine()!.split(separator: " ").map{Int(String($0))!}
firstArr.sort()

var result = [Int]()

for i in 0..<secondCount{
    result.append(binarySearch(firstArr,secondArr[i]))
}

for i in 0..<result.count{
   print(result[i])
}

    func binarySearch(_ arr: [Int], _ num: Int) -> Int{
        if num < arr[0] {
            return 0
        } else if num > arr[arr.count - 1]{
            return 0
        } else {
            var start: Int = 0
            var end: Int = arr.count - 1
            var mid: Int = (end + start) / 2
            while (end-start >= 0) {
                if arr[mid] == num {
                    return 1
                } else if (arr[mid] < num){
                    start = mid + 1
                } else if (arr[mid] > num){
                    end = mid - 1
                }

                mid = (start + end) / 2
            }
        }

        return 0
    
    }




//MARK: 나의풀이 (시간초과)
//let firstCount = Int(readLine()!)!
//var firstArr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let secondCount = Int(readLine()!)!
//let secondArr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var index = 0
//firstArr.sort()
//
//
//for i in 0..<secondCount{
//
//    func binarySearch(_ arr: [Int], num: Int) -> Int{
//
//
//
//        if arr.count == 1 {
//            return arr[0] == num ? 1 : 0
//        }
//
//        let mid = arr.count / 2
//        var range = 0..<arr.count
//
//        if num == arr[mid]{
//            return 1
//        } else{
//            range = arr[mid] > num ? (0..<mid) : ((mid+1)..<arr.count)
//        }
//
//
//        if (mid+1) == arr.count && range == ((mid+1)..<arr.count){
//            return binarySearch(Array(arr[1...1]), num: secondArr[i])
//        }
//        else{
//            return binarySearch(Array(arr[range]), num: secondArr[i])
//        }
//
//
//
//    }
//
//    print(binarySearch(firstArr, num: secondArr[i]))
//}
