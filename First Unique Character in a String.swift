//
//  First Unique Character in a String.swift
//  
//
//  Created by Macbook Pro on 19/9/24.
//

import Foundation

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        for (index1,value1) in s.enumerated(){
            var flag = false
            for (index2,value2) in s.enumerated(){
                if index1 == index2{
                    continue
                }
                else if value1 == value2{
                    flag = true
                    break
                }
            }
            if !flag{
                return index1
            }
        }
        return -1

    }
}
