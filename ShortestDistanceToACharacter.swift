// Kevin Li - 3:50 PM - 5/10/20 - macOS 10.15

// https://leetcode.com/problems/shortest-distance-to-a-character/
// Time: O(n)
// Space: O(n)

class Solution {

    func shortestToChar(_ S: String, _ C: Character) -> [Int] {
        let count = S.count
        var distances = [Int](repeating: 0, count: count)
        // Previous has to be a negative number greater than or equal
        // to count to account for the first `n` characters that aren't
        // equal to C. Since the first `n` characters are now negative,
        // the 2nd pass distances will replace these characters.
        var previous = -count

        // Each character not equal to C has a value of
        // (its index - previously seen C index).
        // Of course, the first `n` characters up to the first seen C
        // don't count as they don't have a previously seen C index.
        // As mentioned above, they are meant to be replaced 2nd pass.
        for (i, letter) in S.enumerated() {
            if letter == C { previous = i }
            distances[i] = i - previous
        }

        // Previous has to be greater than or equal to (2 * count)
        // because this will ensure that the first `n` characters
        // from the back that aren't equal to C stay the same.
        previous = count * 2

        // Each character not equal to C now may have its value
        // mutated to (previously seen C index - its index).
        // This change depends on whether or not the above value is
        // less than the existing value at the existing index.
        // Once again, the first `n` characters from the back that
        // aren't C are guaranteed to not be mutated.
        for i in (0..<count).reversed() {
            if distances[i] == 0 { previous = i }
            distances[i] = min(distances[i], previous - i)
        }

        return distances
    }

}
