// Kevin Li - 9:11 PM - 5/12/20

// https://leetcode.com/problems/letter-case-permutation/
// Time: O(2^n). n: number of alphabetical letters in S
// Space: O(2^n)

class Solution {

    func letterCasePermutation(_ S: String) -> [String] {
        var permutations = [String]()
        letterCaseDFS(
            currentIndex: 0,
            currentPermutation: "",
            characters: S.map(String.init),
            permutations: &permutations)
        return permutations
    }

    func letterCaseDFS(
        currentIndex: Int,
        currentPermutation: String,
        characters: [String],
        permutations: inout [String]) {
        guard currentIndex < characters.count else {
            permutations.append(currentPermutation)
            return
        }

        let currentCharacter = characters[currentIndex]
        if currentCharacter.isDigit {
            letterCaseDFS(
                currentIndex: currentIndex + 1,
                currentPermutation: currentPermutation + currentCharacter,
                characters: characters,
                permutations: &permutations)
        } else {
            letterCaseDFS(
                currentIndex: currentIndex + 1,
                currentPermutation: currentPermutation + currentCharacter.uppercased(),
                characters: characters,
                permutations: &permutations)
            letterCaseDFS(
                currentIndex: currentIndex + 1,
                currentPermutation: currentPermutation + currentCharacter.lowercased(),
                characters: characters,
                permutations: &permutations)
        }
    }

}

fileprivate extension String {

    var isDigit: Bool {
        return Int(self) != nil
    }

}
