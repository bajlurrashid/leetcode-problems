//
//  Two Sum.swift
//  
//
//  Created by Macbook Pro on 8/9/24.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for (index1, value1) in nums.enumerated(){
            for (index2, value2) in nums.enumerated(){
                if value1+value2 == target && index1 != index2{
                    return [index1, index2]
                    break
                }
            }

        }
           return []
    }
 
}
