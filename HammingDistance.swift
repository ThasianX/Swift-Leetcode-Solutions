// Kevin Li - 11:00 PM - 4/22/20 - macOS 10.15

// https://leetcode.com/problems/hamming-distance/
// Time: O(1)
// Space: O(1)

class Solution {
    // Utilizing the standard library
//    func hammingDistance(_ x: Int, _ y: Int) -> Int {
//        // XOR compares the bits of the 2 Ints.
//        // As a reuslt, x ^ y returns a new binary number
//        // whose bits are set to 1 where input bits are
//        // different and are set to 0 where input bits are
//        // the same. Then you just need to find the number
//        // of non zero bits to determine the hamming distance
//        return (x ^ y).nonzeroBitCount
//    }

    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        // Finds different bits
        let signedDifferentBits = x ^ y

        // Bitcast Int to UInt to allow the algorithm work correctly also for negative numbers.
        var differentBits: UInt = unsafeBitCast(signedDifferentBits, to: UInt.self)

        var counter = 0

        // While there are some bits still set to 1 in differentBits
        while differentBits > 0 {
            // Mask differentBits with number 1.
            // This sets all bits in differentBits but the last one to zero
            // depending on what the last number of differentBits is
            // 1 becomes { 0 } 1, the number of 0s depending on how long differentBits is
            // Ex: 001010001 & 000000001 = 000000001
            let maskedBits = differentBits & 1

            // If the last bit is 1
            if maskedBits == 1 {
                counter += 1
            }

            // Shift bits in differentBits to the right
            differentBits = differentBits >> 1
        }

        return counter
    }
}
