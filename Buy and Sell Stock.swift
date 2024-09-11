//
//  Buy and Sell Stock.swift
//  
//
//  Created by Macbook Pro on 11/9/24.
//

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var totalProfit = 0
        for (index, value) in prices.enumerated(){
            if index < prices.count - 1{
                let profit = prices[index+1] - prices[index]
                if profit > 0{
                    totalProfit = totalProfit + profit
                }
            }
        }
        return totalProfit
    }
}
