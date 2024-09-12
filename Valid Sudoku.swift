//
//  Valid Sudoku.swift
//  
//
//  Created by Macbook Pro on 12/9/24.
//

import Foundation

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var matrix1 = Set<Character>()
        var matrix2 = Set<Character>()
        var matrix3 = Set<Character>()
        var matrix4 = Set<Character>()
        var matrix5 = Set<Character>()
        var matrix6 = Set<Character>()
        var matrix7 = Set<Character>()
        var matrix8 = Set<Character>()
        var matrix9 = Set<Character>()

        for row in 0..<board.count{
            var rowSet = Set<Character>()
            for column in 0..<board[0].count{
                let char = board[row][column]
                if char != "." && rowSet.contains(char){
                    return false
                }
                else{
                    rowSet.insert(char)
                    if row>=0 && row<3 && column>=0 && column<3{
                            if char != "." && matrix1.contains(char){
                                return false
                            }
                            else{
                                matrix1.insert(char)
                            }
                    }
                    else if row>=0 && row<3 && column>=3 && column<6{
                        if char != "." && matrix2.contains(char){
                                return false
                            }
                            else{
                                matrix2.insert(char)
                            }
                    }
                    else if row>=0 && row<3 && column>=6 && column<9{
                        if char != "." && matrix3.contains(char){
                                return false
                            }
                            else{
                                matrix3.insert(char)
                            }
                    }
                    else if row>=3 && row<6 && column>=0 && column<3{
                        if char != "." && matrix4.contains(char){
                                return false
                            }
                            else{
                                matrix4.insert(char)
                            }
                    }
                    else if row>=3 && row<6 && column>=3 && column<6{
                        if char != "." && matrix5.contains(char){
                                return false
                            }
                            else{
                                matrix5.insert(char)
                            }
                    }
                    else if row>=3 && row<6 && column>=6 && column<9{
                        if char != "." && matrix6.contains(char){
                                return false
                            }
                            else{
                                matrix6.insert(char)
                            }
                    }
                    else if row>=6 && row<9 && column>=0 && column<3{
                        if char != "." && matrix7.contains(char){
                                return false
                            }
                            else{
                                matrix7.insert(char)
                            }
                    }
                    else if row>=6 && row<9 && column>=3 && column<6{
                        if char != "." && matrix8.contains(char){
                                return false
                            }
                            else{
                                matrix8.insert(char)
                            }
                    }
                    else if row>=6 && row<9 && column>=6 && column<9{
                        if char != "." && matrix9.contains(char){
                                return false
                            }
                            else{
                                matrix9.insert(char)
                            }
                    }
                }
            }
        }
        
        for column in 0..<board[0].count{
            var colSet = Set<Character>()
            for row in 0..<board.count{
                let char = board[row][column]
                if char != "." && colSet.contains(char){
                    return false
                }
                else{
                    colSet.insert(char)
                }
            }
        }
        return true
    }
}
