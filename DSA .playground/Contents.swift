import UIKit

//var greeting = "Hello, playground"
// 
//var ar = [1, 8, 6, 2, 5, 4, 8, 3, 7]
//print("Started exectution")
//
//
//
//
//class Solution {
//    func maxArea(_ height: [Int]) -> Int {
//        var area = 0
//        var i = 0  // left Pointer
//        var j = height.count - 1  // right poinet
//        
//        while(i<j) {
//            var h = min(height[i], height[j])
//            var w = j-i
//            area = max(area, h*w)
//            height[i] < height[j] ? (i+=1) : (j-=1)
//        }
//        return area
//    }
//}
//    
//    
//    
//    Solution().maxArea(ar)

var nums = [1,2,3,4]

   


 

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = nums
        
        for i in 0..<nums.count {
            var internalResult = 1
            for j in 0..<nums.count {
                if i != j { internalResult *= nums[j]}
            }
            result[i] = internalResult
        }
        return result
    }
}



    
Solution().productExceptSelf(nums)
