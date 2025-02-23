//
//  SwapOdds.swift
//  PracticeProject
//
//  Created by Максим Бондарев on 23.02.2025.
//

import Foundation

func SwapOdds(array_1 array_1: [Int], array_2 array_2: [Int]) -> ([Int], [Int]) {
    var array_1 = array_1
    var array_2 = array_2
    
    for index in stride(from: array_1.count-1, through: 0, by: -1){
        if array_1[index] % 2 == 0 {
            array_2.append(array_1[index])
            array_1.remove(at: index)
        }
    }
    
    for index in stride(from: array_2.count-1, through: 0, by: -1){
        if array_2[index] % 2 != 0 {
            array_1.append(array_2[index])
            array_2.remove(at: index)
        }
    }
    
    return (array_1, array_2)
    
}
