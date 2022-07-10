//
//  백준2178.swift
//  algorithm
//
//  Created by Finley on 2022/06/08.


import Foundation

let id = ["muzi", "frodo", "apeach", "neo"]
let re = ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"]

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reported = [String : String]()
    
for i in Set(report){
    var splited = i.split(separator: " ").map{String($0)}
    reported[splited[0]] = splited[1]
}

    if reporte
}
