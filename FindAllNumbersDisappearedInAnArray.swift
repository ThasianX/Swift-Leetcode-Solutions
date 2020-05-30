// Kevin Li - 10:22 PM - 5/28/20

// https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/
// Time: O(n) - 2 passes: looping through the first time and then reducing
// Space: O(n) - We have to create a copy of nums to mutate it and the returned array can also take up as much space as nums

class Solution {

    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }

        var mutableNums = nums
        for i in 0..<mutableNums.count {
            let representativeIndex = mutableNums[i].representativeIndex
            if mutableNums[representativeIndex].hasNotAppeared {
                mutableNums[representativeIndex].makeVisible()
            }
        }

        return mutableNums.indices.reduce(into: [Int]()) { disappearedNums, index in
            if mutableNums[index].hasNotAppeared {
                disappearedNums.append(index.representativeNumber)
            }
        }
    }

}

extension Int {

    // abs value is necessary because in an array like [2, 1, 1],
    // we start by flipping the sign of 1 -> -1. The new arr: [2, -1, 1]
    // So now we know that the number 2 has appeared, which is coupled
    // with the value at index 1 now. To not let this relationship affect
    // finding other appeared numbers, we make sure to take the absolute
    // value at any index we visit, so we always get the original value of any number
    var representativeIndex: Int {
        return abs(self) - 1 // range: [0, count-1]
    }

    var hasNotAppeared: Bool {
        return self > 0
    }

    mutating func makeVisible() {
        self *= -1
    }

    var representativeNumber: Int {
        return self + 1
    }

}
