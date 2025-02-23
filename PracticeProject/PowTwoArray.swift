//
//  PowTwoArray.swift
//  PracticeProject
//
//  Created by Максим Бондарев on 22.02.2025.
//

import Foundation

func PowTwoArray(_ array: [Int]) -> [Int] {
    var result: [Int] = []
    for element in array {
        result.append(element * element)
    }
    return result
}
