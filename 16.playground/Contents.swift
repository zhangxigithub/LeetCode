    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
     

        var closet = (value:Int.max,detal:Int.max)
        
        if nums.count == 3
        {
            return nums[0] + nums[1] + nums[2]
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
        
        
        let sorted = nums.sorted()
        print(1)
        for i in 0 ..< sorted.count-2
        {
            var j = i+1
            var k = sorted.count-1
            
            print("2:",i,j,k)
            
            while (j < k) {
                print(3)
                let sum = sorted[i] + sorted[j] + sorted[k]
                if sum < target
                {
                    j += 1
                    if target - sum < closet.detal
                    {
                        closet.detal = target - sum
                        closet.value = sum
                        print("closet : ",closet)
                    }
                }
                if sum > target
                {
                    k -= 1
                    if (sum - target) < closet.detal
                    {
                        closet.detal = sum - target
                        closet.value = sum
                        print("closet : ",closet)
                    }
                }
                if sum == target
                {
                    return target
                }
            }
        }
        return closet.value
    }
    
 
    let array = [1,1,1,1]

    print(threeSumClosest(array, 0))

    
    
