//
//  Implement strStr().swift
//  
//
//  Created by Macbook Pro on 28/9/24.
//

import Foundation

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        if haystack.count < needle.count{
            return -1
        }
        var traversIndex = 0
        var matchStartIndex = -1
        let firstCharacter = needle[needle.startIndex]
        
        while(traversIndex <= haystack.count && (haystack.count - traversIndex) >= needle.count){
            let hIndex = haystack.index(haystack.startIndex, offsetBy: traversIndex)
            let hCharacter = haystack[hIndex]
            
            if firstCharacter == hCharacter{
                matchStartIndex = traversIndex
                for i in 1..<needle.count{
                    if needle[needle.index(needle.startIndex, offsetBy: i)] == haystack[haystack.index(haystack.startIndex, offsetBy: traversIndex + i)]{
                        continue
                    }
                    else{
                        matchStartIndex = -1
                        break
                    }
                    
                }
                if matchStartIndex != -1{
                    return matchStartIndex
                }
                else{
                    traversIndex += 1
                }
            }
            else{
                traversIndex += 1
            }
            
        }
        return matchStartIndex
        
    }
}
