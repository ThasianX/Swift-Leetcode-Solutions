// Kevin Li - 5:22 PM - 5/7/20 - macOS 10.15

// https://leetcode.com/problems/unique-email-addresses/
// Time: O(n)
// Space: O(n)

class Solution {

    func numUniqueEmails(_ emails: [String]) -> Int {
        return Set<String>(emails.map { $0.canonical }).count
    }

}

private extension String {

    var canonical: String {
        var stripped = ""
        var skipToDomain = false

        for index in self.indices {
            let c = self[index]

            if c == "@" {
                stripped += self[index...]
                break
            }

            if skipToDomain || c == "." {
                continue
            }

            if c == "+" {
                skipToDomain = true
            } else {
                stripped += String(c)
            }
        }

        return stripped
    }

}
