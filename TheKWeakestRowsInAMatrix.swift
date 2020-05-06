// Kevin Li - 7:05 PM - 5/5/20 - macOS 10.15

// https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/
// Time: O(n log n)
// Space: O(n)

class Solution {

    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        let arr: [(Int, Int)] = mat.enumerated().map { (index, row) in
            var numOfSoldiers = 0
            for num in row {
                if num == 1 {
                    numOfSoldiers += 1
                } else {
                    break
                }
            }
            return (index, numOfSoldiers)
        }
        return arr.sorted(by: { $0.1 < $1.1 || $0.1 == $1.1 && $0.0 < $1.0 })
            .prefix(k)
            .map { $0.0 }
    }

}
