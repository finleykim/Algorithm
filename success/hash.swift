//
//  hash.swift
//  algorithm
//
//  Created by Finley on 2022/07/07.
//

import Foundation

var hashTable: [String?] = .init(repeating: nil, count: 3)

func hash(key: Int) -> Int {
    return key % 3
}

func updateValue(_ value: String, forKey key: String) {
    guard let key = UnicodeScalar(key)?.value else { return }
    let hashAddress = hash(key: Int(key))
    hashTable[hashAddress] = value
}

func getValue(forKey key: String) -> String? {
    guard let key = UnicodeScalar(key)?.value else { return nil }
    let hashAddress = hash(key: Int(key))
    return hashTable[hashAddress]
}
