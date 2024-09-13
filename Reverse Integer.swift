//
//  Reverse Integer.swift
//  
//
//  Created by Macbook Pro on 12/9/24.
//

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        var y = 0
        var z = x
            while(z != 0){
                y = y * 10 + z % 10
                z = z/10
            }
        
        if y > (-1 * (1 << 31)) && y < (1 << 31 - 1){
            return y
        }
        else{
            return 0
        }

    }
}
