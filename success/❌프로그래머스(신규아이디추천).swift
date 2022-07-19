//
//  프로그래머스(신규아이디추천).swift
//  algorithm
//
//  Created by Finley on 2022/07/18.
//https://school.programmers.co.kr/learn/courses/30/lessons/72410

import Foundation

func solution(_ new_id:String) -> String {
    
    //1단계
    let newID = new_id.lowercased()
    var arr = [String]()
    let removeList = ["~","!","@","#","$","%","^","&","*","(",")","+","=","[","{","]","}",":","?",",","<",">","/",""]
    var count = 0
    
    
    //배열화
    for i in newID.unicodeScalars {
        arr.append(String(i))
    }
    
    //2단계: 허용하지 않는 문자제거
    for i in removeList{
        if arr.contains(i){
            arr = arr.filter(){ $0 != i }
        }
    }
    
    
    
    
    //3단계: 연속된 마침표를 하나의 마침표로 치환
    if arr.count > 1{
        for i in 0..<arr.count-2{
                if arr[i] == "." {
                    if arr[i+1] == "." || arr[i-1] == "."{
                        arr.remove(at: i)
                        arr.insert("", at: i)
                    }else if arr[i+1] == "." && arr[i-1] == "."{
                        arr.remove(at: i+1)
                        arr.remove(at: i-1)
                    }
                }
        }

        arr = arr.filter(){ $0 != "" }

    }
    
    
    
    //4단계: 가장 첫번째 또는 마지막번째에 잇는 마침표는 삭제
    if arr[0] == "."{
        arr.remove(at: 0)
    } else if arr[arr.count - 1] == "."{
        arr.remove(at: arr.count - 1)
    }
    
    
    //5단계: 아무 것도 없으면 a대입
    if arr == []{
        arr.append("a")
    }
    
    
    //6단계: 16자 이상이면,15개 제외한 나머지 문자 제거. 앞뒤 마침표 한번 더 제거
    if arr.count > 15{
        count = arr.count - 15
        for _ in 1...count{
            arr.remove(at: 15) //15자리 지울때마다 뒤에꺼 앞으로 땡겨지니까 또 15지우면됨. 즉 15를 count만큼 반복해서 지우기
        }
    }
    
    if arr[0] == "."{
        arr.remove(at: 0)
    } else if arr[arr.count - 1] == "."{
        arr.remove(at: arr.count - 1)
    }
    
    
    //7단계: 2자 이하라면 마지막 문자를 길이가 3이될 때 까지 끝에 붙인다
    if arr.count <= 2{
        while arr.count < 3{
            arr.append(arr[arr.count-1])
        }
    }
    
    
    //문자열화
    var result = ""
    
    for i in arr{
        result = result+i
    }
    
    return result
    
}
