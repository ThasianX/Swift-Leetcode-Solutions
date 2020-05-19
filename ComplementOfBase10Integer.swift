// Kevin Li - 7:45 PM - 5/18/20

// https://leetcode.com/problems/complement-of-base-10-integer/
// Time: O(1)
// Space: O(1)

class Solution {

    func bitwiseComplement(_ N: Int) -> Int {
        // 0 will immediately terminate the loop below and return 0,
        // which is the not right complement(1). Therefore, we have
        // to check for this edge case at the start and return 1
        guard N != 0 else { return 1 }

        var bits = N // Making N mutable
        var complement = 0 // Returning this at the end
        var shiftIndex = 0 // Track index at which to insert complement bit

        while bits > 0 {
            // Mask bits with number 1.
            // This sets all bits in bits but the last one to zero
            // depending on what the last number of bits is. This is
            // because the binary of 1 is a bunch of 0s followed by 1.
            // Ex: 001010001 & 000000001 = 000000001
            // Ex: 001010001 & 000000000 = 000000000
            let maskedBits = bits & 1

            // Since we want the complement, we invert any 0s we see to 1s.
            if maskedBits == 0 {
                // Tracking the index is useful because any index which we
                // don't explicitly add 1 at is just 0.
                // Before: complement = 101, shiftIndex = 6
                // After: complement = 1000101, shiftIndex = 6
                complement += 1 << shiftIndex
            }

            shiftIndex += 1
            // Shift so we can check the next last bit of bits
            // Before: bits = 10011101
            // After: bits = 1001110
            bits = bits >> 1
        }

        return complement
    }

}
