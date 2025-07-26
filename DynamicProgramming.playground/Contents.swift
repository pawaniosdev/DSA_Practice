import UIKit

var greeting = "Hello, playground"

func findRecursion(_ num: Int) -> Int {
    var dp = [Int](repeating: -1, count: num+1)
    
    func rec(_ num: Int) -> Int {
        if num < 2 { return num }
        if dp[num] != -1 { return dp[num] }
        dp[num] = rec(num-1) + rec(num - 2)
        return dp[num]
    }
    let result = rec(num)  // Call the recursive function
print(dp)              // Now dp contains the memoized results
return result
}


print("Started Executin")
findRecursion(12)
print("Ended Executin")


