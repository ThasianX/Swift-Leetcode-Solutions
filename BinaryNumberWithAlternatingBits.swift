// Kevin Li - 8:06 PM - 5/18/20

// https://leetcode.com/problems/binary-number-with-alternating-bits/
// Time: O(1)
// Space: O(1)

class Solution {

    func hasAlternatingBits(_ n: Int) -> Bool {
        // We need to get the initial last bit as a reference for
        // following checks to determine if the next last bit is
        // alternating or not
        var lastBit = n & 1
        // As a result of getting the reference bit, the new bits
        // which will be used for comparison is now shifted to the
        // right by 1
        var bits = n >> 1

        while bits > 0 {
            // Mask bits with number 1.
            // This sets all bits in bits but the last one to zero
            // depending on what the last number of bits is. This is
            // because the binary of 1 is a bunch of 0s followed by 1.
            // Ex: 001010001 & 000000001 = 000000001
            // Ex: 001010001 & 000000000 = 000000000
            let maskedBits = bits & 1

            // If they are equal, this means that the bits are not alternating
            if maskedBits == lastBit {
                return false
            }

            // Storing the reference bit
            lastBit = maskedBits
            // Shift so we can check the next last bit of bits
            // Before: bits = 10011101
            // After: bits = 1001110
            bits >>= 1
        }

        return true
    }

}
