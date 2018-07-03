

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
 }
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        var array = [ListNode]()
        
        var i = head
        

        while i != nil {
            array.append(i!)
            print(i?.next)
            i = i?.next
            
        }
        
        if array.count == 1 && n == 1
        {
            return nil
        }
        
        print(array.count,n,array.count-n-1,array.count-n+1)
        array[array.count-n-1].next = array[array.count-n+1]
        return head
        
    }
}
