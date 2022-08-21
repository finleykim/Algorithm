//
//  백준1475.swift
//  algorithm
//
//  Created by Finley on 2022/06/07.
//

import Foundation


let n = readLine()! //방번호
var num = Array(repeating: 0, count: 10) //번호세트
var count = 0 //필요한 번호세트 개수

for i in n{
    num[Int(String(i))!] += 1
}

num[9] += num[6]
num[6] = 0


if num.firstIndex(of: num.max()!) == 9 {
    print((num[9] / 2) + (num[9] % 2))
}
else { print(num.max()!) }

//제일 많이 필요한 숫자에 맞춰서 세트를 구매하면 되는데, 9가 제일 많을 경우에는 6을 활용할 수 있으니까 그 몫으로 나누기 2하고, 홀수일 수도 있으니까 나머지값 더하기




