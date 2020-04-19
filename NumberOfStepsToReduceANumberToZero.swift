// Kevin Li - 11:27 AM - 4/19/20 - macOS 10.15

// https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/
class Solution {
    func numberOfSteps (_ num: Int) -> Int {
        var steps = 0
        var number = num

        while number != 0 {
            if number % 2 == 0{
                number /= 2
            } else {
                number -= 1
            }
            steps += 1
        }

        return steps
    }
}
