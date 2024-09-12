//
//  Move Zeroes.swift
//  
//
//  Created by Macbook Pro on 12/9/24.
//

import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var lastIndex = nums.count - 1
        for i in 0..<nums.count {
            let value = nums[i]
            if value == 0{
                let zeroIndex = i
                var j = i
                while (j<lastIndex){
                    if nums[j+1] != 0{
                        let temp = nums[j+1]
                        nums[j+1] = 0
                        nums[zeroIndex] = temp
                        break
                    }
                    else{
                        j = j+1
                    }
                }
            }
        }
    }
}
