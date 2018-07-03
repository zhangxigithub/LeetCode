    func threeSum(_ nums: [Int]) -> [[Int]] {
     
        if nums.count <= 2 { return [[Int]]()}
        if nums.count == 3 {
            if nums[0]+nums[1]+nums[2] == 0
            {
                return [nums]
            }else
            {
                return [[Int]]()
            }
        }
        
        var result = [String:[Int]]()
        
        
        if nums.filter({ (value) -> Bool in
            return value == 0
        }).count >= 3
        {
            result[[0,0,0].description] = [0,0,0]
        }
        
       

        var count = [Int:Int]()
        let cleanData =  nums.filter { (value) -> Bool in
            
            if count[value] == nil
            {
                count[value] = 1
            }else
            {
                count[value]! += 1
            }
            
            if count[value]! <= 2
            {
                return true
            }
            return false
        }
        
        
        let sorted = cleanData.sorted()
        
        for i in 0 ..< sorted.count-2
        {
            var j = i+1
            var k = sorted.count-1
            
            while (j < k) {
                let sum = sorted[i] + sorted[j] + sorted[k]
                if sum < 0
                {
                    j += 1
                }
                if sum > 0
                {
                    k -= 1
                }
                if sum == 0
                {
                    let a = [sorted[i], sorted[j], sorted[k]].sorted()
                    result[a.description] = a
                    print(i,j,k)
                    j += 1
                }
            }
        }
        return Array(result.values)
        
    }
    
 
    let array = [-1,0,1,2,-1,-4]

    print(threeSum(array))

    
    
