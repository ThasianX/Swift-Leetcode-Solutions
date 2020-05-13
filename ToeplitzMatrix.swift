// Kevin Li - 3:29 PM - 5/12/20

// https://leetcode.com/problems/toeplitz-matrix/
// Time: O(m * n)
// Space: O(1)

class Solution {

    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        for row in 0..<matrix.count-1 {
            for column in 0..<matrix[0].count-1 {
                if !matrix.isToeplitzAt(row: row, column: column) {
                    return false
                }
            }
        }
        return true
    }

}

fileprivate extension Array where Element == [Int] {

    func isToeplitzAt(row: Int, column: Int) -> Bool {
        return self[row][column] == self[row + 1][column + 1]
    }

}
