//
//  Reverse String.swift
//  
//
//  Created by Macbook Pro on 12/9/24.
//

import Foundation

class Solution {
    func reverseString(_ s: inout [Character]) {
        for i in 0..<s.count/2{
            let temp = s[i]
            s[i] = s[s.count-i-1]
            s[s.count-i-1] = temp
        }
    }
}
