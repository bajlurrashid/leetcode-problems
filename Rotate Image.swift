//
//  Rotate Image.swift
//  
//
//  Created by Macbook Pro on 12/9/24.
//

import Foundation

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        for i in 0..<matrix.count/2 {
            var c = matrix[i].count - i - 1
            var k = i, j = c
            while(j>i){
                var temp = matrix[k][i]
                matrix[k][i] = matrix[c][k]
                matrix[c][k] = matrix[j][c]
                matrix[j][c] = matrix[i][j]
                matrix[i][j] = temp
                k = k+1
                j = j-1
            }
           
        }
    }
}
