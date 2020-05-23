// Kevin Li - 7:50 PM - 5/22/20

// https://leetcode.com/problems/fair-candy-swap/solution/
// Time: O(n)
// Space: O(n)

class Solution {

    // In this solution, we solve for candySizeFromB
    // Equation: SumOfA - candySizeFromA + candySizeFromB = SumOfB + candySizeFromA - candySizeFromB
    // Equation(cont): 2 * candySizeFromB = (SumOfB - SumOfA) + (2 * candySizeFromA)
    // Equation(cont): candySizeFromB = ((SumOfB - SumOfA) / 2) + candySizeFromA
    func fairCandySwap(_ A: [Int], _ B: [Int]) -> [Int] {
        // complementCandySizes contains all the possible values that may
        // result from solving for sizeFromB in the above equation
        let complementCandySizes = Set(B)
        let sumOfA = A.reduce(0, +)
        let sumOfB = B.reduce(0, +)
        // delta represents how much sizeFromA will be shifted
        // in order to calculate sizeFromB
        let delta = (sumOfB - sumOfA) / 2

        for candySizeFromA in A {
            let candySizeFromB = delta + candySizeFromA
            if complementCandySizes.contains(candySizeFromB) {
                return [candySizeFromA, candySizeFromB]
            }
        }

        fatalError("Error: Problem specifies that solution is guaranteed to exist")
    }

}

