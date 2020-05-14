// Kevin Li - 10:45 PM - 5/13/20

// https://leetcode.com/problems/uncommon-words-from-two-sentences/
// Time: O(m + n). m: A.count, n: B.count
// Space: O(m + n)

class Solution {

    func uncommonFromSentences(_ A: String, _ B: String) -> [String] {
        var words = [String: Int]()

        (A.components(separatedBy: " ") + B.components(separatedBy: " ")).forEach { word in
            words[word, default: 0] += 1
        }

        return words.reduce(into: [String]()) { uncommonWords, word in
            if word.value == 1 { uncommonWords.append(word.key) }
        }
    }
}
