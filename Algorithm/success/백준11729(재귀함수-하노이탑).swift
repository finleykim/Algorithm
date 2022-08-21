//
//  백준11729(재귀함수-하노이탑).swift
//  algorithm
//
//  Created by Finley on 2022/08/16.
//

import Foundation

let n = Int(readLine()!)!
print("\(pow(2, n) - 1)")
hanoi(n, 1, 2, 3)


func hanoi(_ n: Int, _ start: Int, _ mid: Int, _ end: Int) {
    if n == 1 {
        print("\(start) \(end)")
        return
    }
    hanoi(n-1, start, end, mid)
    hanoi(1, start, mid, end)
    hanoi(n-1, mid, start, end)
}
