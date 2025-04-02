//
//  Hamming Distance.swift
//  
//
//  Created by Macbook Pro on 1/4/25.
//

import Foundation

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var distance: Int = 0
        var temp1 = x, temp2 = y
        while(temp1>0 || temp2>0){
            if temp1%2 != temp2%2{distance+=1}
            temp1 = temp1/2
            temp2 = temp2/2
        }
        return distance
        
    }
}
