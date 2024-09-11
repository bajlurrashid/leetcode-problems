//
//  Plus One.swift
//  
//
//  Created by Macbook Pro on 11/9/24.
//

import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var carry = 0, plusOne = 1
        var finalArray : [Int] = []
        for element in digits.reversed(){
            let sum = element + carry + plusOne
            let digit = sum%10
            carry = sum/10
            plusOne = 0
            finalArray.append(digit)
        }
        if carry != 0 {
            finalArray.append(carry)
        }
        return finalArray.reversed()
    }
}
