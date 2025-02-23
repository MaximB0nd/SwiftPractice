//
//  RandomArray.swift
//  PracticeProject
//
//  Created by Максим Бондарев on 22.02.2025.
//

import Foundation

func RandomArray(count n: Int, range range: Range<Int>) -> [Int] {
    var array: Array<Int> = []
    for _ in 0..<n {
        array.append(Int.random(in: range))
    }
    return array
}
