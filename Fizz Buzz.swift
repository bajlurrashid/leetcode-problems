//
//  Buy and Sell Stock.swift
//  
//
//  Created by Macbook Pro on 13/3/25.
//

import Foundation

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var emptyArray: [String] = []
        emptyArray.reserveCapacity(n)  // Reserves capacity but doesn't initialize elements

        for i in 1...n {  // Corrected for loop syntax
            if i % 3 == 0 && i % 5 == 0 {
                emptyArray.append("FizzBuzz")
            } else if i % 3 == 0 {
                emptyArray.append("Fizz")
            } else if i % 5 == 0 {
                emptyArray.append("Buzz")
            } else {
                emptyArray.append("\(i)")  // Convert integer to string
            }
        }
        return emptyArray
    }
}
