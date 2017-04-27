import Foundation

public struct Queue<T> {

    fileprivate var array = [T?]()
    fileprivate var head = 0
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    public var count: Int {
        return array.count - head
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        
        guard head < array.count, let element = array[head] else {
            return nil
        }
        
        array[head] = nil
        head += 1
        let percentage = Double(head)/Double(array.count)
        
        if array.count > 50 && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        //This calculates the percentage of empty spots at the beginning as a ratio of the total array size. If more than 25% of the array is unused, we chop off that wasted space. However, if the array is small we do not resize it all the time, so there must be at least 50 elements in the array before we try to trim it.
        
        return element
    }
    
    public var froun: T? {
        if isEmpty {
            return nil
        }
        else {
            return array[head]
        }
    }
}

//Enqueuing is an O(1) operation because adding to the end of an array always takes the same amount of time regardless of the size of the array.

var queue = Queue<String>()
queue.enqueue("Ada")
queue.enqueue("Steve")
queue.enqueue("lucy")

var q = Queue<String>()
q.array

q.enqueue("lucy")
q.enqueue("jessi")
q.enqueue("anna")
q.array
q.count

q.dequeue()
