//
//  Count Primes.swift
//  
//
//  Created by Macbook Pro on 13/3/25.
//

class Solution {
    func countPrimes(_ n: Int) -> Int {
        if n < 2 { return 0 }  // No primes below 2
    
        var count: Int = 0
            if n > 2 { count += 1 } // Counting 2 as a prime number

            for i in stride(from: 3, to: n, by: 2) { // Start from 3, step by 2 (skip even numbers)
                var isPrime = true // Assume `i` is prime
                for j in stride(from: 3, through: Int(Double(i).squareRoot()), by: 2) { // Check divisibility up to sqrt(i)
                    if i % j == 0 {
                        isPrime = false
                        break // No need to check further
                    }
                }

                if isPrime {
                count += 1
                }
            }

        return count // Return the total prime count        return count // Return the final count
        
    }
}
