// Kevin Li - 11:12 AM - 5/19/20

// https://leetcode.com/problems/reverse-only-letters/
// Time: O(n)
// Space: O(n)

class Solution {
    
    func reverseOnlyLetters(_ S: String) -> String {
        var characters = Array(S)
        var leading = 0
        var trailing = S.count - 1

        while leading < trailing {
            while (leading < trailing) && !characters[leading].isLetter {
                leading += 1
            }

            while (leading < trailing) && !characters[trailing].isLetter {
                trailing -= 1
            }

            characters.swapAt(leading, trailing)
            leading += 1
            trailing -= 1
        }

        return String(characters)
    }

}
