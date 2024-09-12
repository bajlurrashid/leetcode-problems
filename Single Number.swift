//
//  Single Number.swift
//  
//
//  Created by Macbook Pro on 11/9/24.
//

import Foundation

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var xor = 0
        for (_,value) in nums.enumerated(){
            xor = xor^value
        }
        return xor
    }
}
