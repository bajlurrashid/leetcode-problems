//
//  Roman to Integer.swift
//  
//
//  Created by Macbook Pro on 18/3/25.
//

import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        var sum: Int = 0
        var carry: Int = 0
        for char in s.reversed() {
            if char == "M"{
                sum = sum + 1000
                carry = 1000
            }
            else if char == "D"{
                if carry > 500{
                    sum = sum - 500
                    carry = 0
                }
                else{
                    sum = sum + 500
                    carry = 500
                }

            }
            else if char == "C"{
                if carry > 100{
                    sum = sum - 100
                    carry = 0
                }
                else{
                    sum = sum + 100
                    carry = 100
                }

            }
            else if char == "L"{
                if carry > 50{
                    sum = sum - 50
                    carry = 0
                }
                else{
                    sum = sum + 50
                    carry = 50
                }

            }
            else if char == "X"{
                if carry > 10{
                    sum = sum - 10
                    carry = 0
                }
                else{
                    sum = sum + 10
                    carry = 10
                }

            }
            else if char == "V"{
                if carry > 5{
                    sum = sum - 5
                    carry = 0
                }
                else{
                    sum = sum + 5
                    carry = 5
                }

            }
            else if char == "I"{
                if carry > 1{
                    sum = sum - 1
                    carry = 0
                }
                else{
                    sum = sum + 1
                    carry = 1
                }

            }

        }

        return sum
    }
}
