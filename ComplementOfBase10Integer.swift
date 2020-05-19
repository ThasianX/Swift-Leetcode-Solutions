// Kevin Li - 7:45 PM - 5/18/20

// https://leetcode.com/problems/complement-of-base-10-integer/
// Time: O(n). n: characters in N
// Space: O(n). We are indirectly storing a string in this process

class Solution {

    func bitwiseComplement(_ N: Int) -> Int {
        return Int(N.binaryComplement, radix: 2)!
    }

}

private extension Int {

    var binaryComplement: String {
        return String(
            String(self, radix: 2) // original binary
                .map { ($0 == "0") ? "1" : "0" } // complement binary
        )
    }

}
