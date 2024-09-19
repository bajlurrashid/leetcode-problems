//
//  Valid Anagram.swift
//  
//
//  Created by Macbook Pro on 19/9/24.
//

import Foundation


class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count == t.count{
            var sDic: [Character: Int] = [:]
            for char in s {
                sDic[char, default: 0] += 1
            }
            let initCount = sDic.count
            for char in t {
                sDic[char, default: 0] -= 1
            }
            if initCount != sDic.count{
                return false
            }
            for (char, count) in sDic{
                if count != 0{
                    return false
                }
            }
            return true

        }
        else{
            return false
        }
        
    }
}
