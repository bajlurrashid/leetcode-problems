//
//  Missing Number.swift
//  
//
//  Created by Macbook Pro on 2/4/25.
//

import Foundation

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var sum: Int = (nums.count * (nums.count + 1))/2
        for i in 0..<nums.count{
            sum-=nums[i]
        }
        return sum
        
    }
}
