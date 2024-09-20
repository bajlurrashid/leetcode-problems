//
//  Valid Palindrome.swift
//  
//
//  Created by Macbook Pro on 19/9/24.
//

import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var left = 0, right = s.count - 1
        var characters = Array(s.lowercased())
        
        while(left<right){
            
            while(left<right && !characters[left].isLetter && !characters[left].isNumber){
                left += 1
            }
            
            while(left<right && !characters[right].isLetter && !characters[right].isNumber){
                right -= 1
            }
            
            if characters[left] != characters[right]{
                return false
            }
            
            left += 1
            right -= 1
        }
        
        return true
    }
}
