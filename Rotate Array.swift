//
//  Rotate Array.swift
//  
//
//  Created by Macbook Pro on 10/9/24.
//

import Foundation
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        let reminder = k % nums.count
        
        if reminder != 0{
            var arraySize = nums.count
            var index = 0, factor = reminder
            var arr = [Int](repeating: 0, count: arraySize)
            
            while factor > 0{
            let value = nums[arraySize - factor]
            arr[index] = value
            factor = factor-1
            index = index+1
            }
            index = 0
            factor = reminder
            while factor < arraySize {
                arr[factor] = nums[index]
                factor = factor+1
                index += 1
            }
            nums = arr
        }
        
        
        
    }
}
