// Kevin Li - 10:20 PM - 5/11/20

// https://leetcode.com/problems/number-complement/
// Time: O(1)
// Space: O(1)

class Solution {

    func findComplement(_ num: Int) -> Int {
        let binaryRep = String(num, radix: 2)
        let complement = binaryRep.map { $0 == "0" ? "1" : "0" }
        return Int(complement, radix: 2)!
    }

}
