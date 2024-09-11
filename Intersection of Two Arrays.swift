//
//  Intersection of Two Arrays.swift
//  
//
//  Created by Macbook Pro on 11/9/24.
//

import Foundation

class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var combinedArray : [Int] = []
        var nums1 = nums1, nums2 = nums2
        for (index1, value1) in nums1.enumerated(){
            for (index2, value2) in nums2.enumerated(){
                if value1^value2 == 0{
                    combinedArray.append(value1)
                    nums1[index1] = -1
                    nums2[index2] = -2
                    break
                }
            }
        }
        return combinedArray
    }
}
