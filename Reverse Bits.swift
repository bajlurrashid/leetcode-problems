//
//  Reverse Bits.swift
//  
//
//  Created by Macbook Pro on 1/4/25.
//

import Foundation

class Solution {
    func reverseBits(_ n: Int) -> Int {
        var temp: Int = n
        var reverse: Int = 0
        var length = 31

        while(length>=0){
            reverse = reverse + ((power(length)) * (temp%2))
            temp = temp/2
            length-=1
        }
        return reverse
    }
    
    private func power(_ length: Int) -> Int{
        var value: Int = 1
        for i in 0..<length {
            value = value * 2
        }
        return value
    }
}
