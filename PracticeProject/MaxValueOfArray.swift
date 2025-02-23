//
//  MaxValueOfArray.swift
//  PracticeProject
//
//  Created by Максим Бондарев on 22.02.2025.
//

import Foundation

func MaxValueOfArray(_ array: [Int]) -> Int? {
    // return array.max()
    guard !array.isEmpty else {
        return nil
    }
    
    var maxValue: Int = array[0]
    for value in array {
        if value > maxValue {
            maxValue = value
        }
    }
    return maxValue
}
