//
//  DelOddArray.swift
//  PracticeProject
//
//  Created by Максим Бондарев on 22.02.2025.
//

import Foundation

func DelOddArray(_ array: [Int]) -> [Int] {
    // return arr.filter { $0 % 2 != 0 }
//    var index = 0
//    while index < array.count {
//        if array[index] % 2 == 0 {
//            array.remove(at: index)
//            index -= 1
//        }
//        index += 1
//    }
//    return array
    
    var array = array
    
    for index in stride(from: array.count - 1, through: 0, by: -1) {
        if array[index] % 2 == 0 {
            array.remove(at: index)
        }
    }
    return array
    
}
