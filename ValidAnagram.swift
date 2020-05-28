// Kevin Li - 9:58 AM - 5/26/20

// https://leetcode.com/problems/valid-anagram/
// Time: O(n) - looping through the string. dictionary lookup is constant time
// Space: O(1) - we know that at most, we will have 26 letters inside the dictionary

class Solution {

    func isAnagram(_ s: String, _ t: String) -> Bool {
        // can't be anagram if strings have differing counts
        guard s.count == t.count else { return false }

        // letterCounts keeps track of how many time eacn letter appears
        // in the first string
        var letterCounts = s.reduce(into: [Character: Int]()) { letterCounts, letter in
            letterCounts[letter, default: 0] += 1
        }

        for letter in t {
            // We want to decrement the count of the letter if it does
            // exit inside the second string
            if let count = letterCounts[letter], count > 0 {
                letterCounts[letter] = count - 1
            } else {
                // We know it's not an anagram if either the letter doesn't
                // exist within the first string or its count is 0
                return false
            }
        }

        return true
    }

}
