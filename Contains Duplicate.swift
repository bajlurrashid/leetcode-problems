//
//  Contains Duplicate.swift
//  
//
//  Created by Macbook Pro on 11/9/24.
//

import Foundation

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var flag = false
        var seenNumbers = Set<Int>()

        for number in nums {
            if seenNumbers.contains(number) {
                flag = true
                break
            } else {
                seenNumbers.insert(number)
            }
        }
        return flag
    }
}
