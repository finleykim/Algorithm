



import Foundation

let id = ["muzi", "frodo", "apeach", "neo"]
let re = ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"]

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [String : String] {
    var reported = [String : String]()
for i in report{
    var splited = i.split(separator: " ").map{String($0)}
    reported[splited[0]] = splited[1]
}

    return reported
}

solution(id, re, 2)
