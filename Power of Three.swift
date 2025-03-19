//
//  Power of Three.swift
//  
//
//  Created by Macbook Pro on 19/3/25.
//

import Foundation

class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        
        if n <= 0 {return false}
        else if n == 1 {return true}
        else if n%3 == 0 {
            var temp: Int = n/3
            var flag: Bool = true
            while temp > 1{
                if temp%3 != 0{
                    flag = false
                    break
                }
                temp = temp/3

            }
            return flag
        }
        else{return false}
        
    }
    
}
