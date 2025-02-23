//
//  SortArray.swift
//  PracticeProject
//
//  Created by Максим Бондарев on 22.02.2025.
//

import Foundation

func SortArray(_ ar: [Int]) -> [Int]{
    
//    var flag: Bool = false
//    while true{
//        flag = false
//        for i in 0..<ar.count-1 {
//            if ar[i] < ar[i+1] {
//                ar.swapAt(i, i+1)
//                flag = true
//                continue
//            }
//            if i == ar.count-2 && !flag{
//                return ar
//            }
//        }
//    }
    
    var ar = ar
    
    for i in 0...ar.count-1 {
        for j in i+1..<ar.count {
            if ar[i] < ar[j] {
                ar.swapAt(i, j)
            }
        }
    }
    return ar
}
