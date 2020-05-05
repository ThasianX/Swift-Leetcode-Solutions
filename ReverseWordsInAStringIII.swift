// Kevin Li - 5:03 PM - 4/29/20 - macOS 10.15

// https://leetcode.com/problems/reverse-words-in-a-string-iii/
// Time: O(n)
// Space: O(n)

class Solution {

    func reverseWords(_ s: String) -> String {
        var reversed = ""

        var reversedWord = ""
        for c in s {
            if c != " " {
                reversedWord = String(c) + reversedWord
            } else {
                reversed += "\(reversedWord) "
                reversedWord = ""
            }
        }
        reversed += reversedWord

        return reversed
    }

}
