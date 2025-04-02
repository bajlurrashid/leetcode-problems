//
//  Number of 1 Bits.swift
//  
//
//  Created by Macbook Pro on 1/4/25.
//

import Foundation

class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var temp: Int = n
        var bits: Int = 0
        while(temp>0){
            bits += temp%2
            temp = temp/2
        }
        return bits
    }
}
