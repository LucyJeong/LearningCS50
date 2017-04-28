//: Playground - noun: a place where people can play

public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top:T? {
        return array.last
    }
}

var lucyBoyFriends = Stack<String>()
lucyBoyFriends.push("Jason")
lucyBoyFriends.push("Jack")
lucyBoyFriends.push("edward")
print(lucyBoyFriends)
lucyBoyFriends.count
lucyBoyFriends.isEmpty
lucyBoyFriends.pop()
lucyBoyFriends.isEmpty
print(lucyBoyFriends.top)


/*
public struct Queue<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequqe() -> T? {
        if isEmpty {
            return nil
        }
        else {
            return array.removeFirst()
        }
    }
    
    public var front: T? {
        return array.first
    }
}


var lucyCloths = Queue<String>()
lucyCloths.enqueue("Shrits")
lucyCloths.enqueue("pants")
lucyCloths.enqueue("hat")
lucyCloths.isEmpty
lucyCloths.count
print(lucyCloths)

lucyCloths.dequqe()
print(lucyCloths)
*/

public struct Queue<T> {
    fileprivate var array = [T?]()
    fileprivate var head = 0
    
    fileprivate var isEmpty: Bool {
        return count == 0
    }
    
    fileprivate var count: Int {
        return array.count - head
    }

    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
    
        guard head < array.count, let element = array[head] else{
            return nil
        }
    
        array[head] = nil
        head += 1
        
        let percentage = Double(head)/Double(array.count)
        if array.count > 50 && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        
        return element
        
    }
    
    public var front: T? {
        if isEmpty {
            return nil
        }
        else {
            return array[head]
        }
    }
}

var cafeOrder = Queue<String>()
cafeOrder.enqueue("lucy")
cafeOrder.enqueue("jason")
cafeOrder.enqueue("great")
cafeOrder.count
cafeOrder.isEmpty
print(cafeOrder)

