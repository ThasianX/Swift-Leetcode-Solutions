// Kevin Li - 8:43 AM - 5/8/20 - macOS 10.15

// https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/
// Time: O(n)
// Space: O(n)

class Solution {

    func removeDuplicates(_ S: String) -> String {
        var stack = [Character]()

        for c in S {
            if let peek = stack.last, peek == c {
                stack.removeLast()
            } else {
                stack.append(c)
            }
        }

        return String(stack)
    }

}
