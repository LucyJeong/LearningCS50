//: Playground - noun: a place where people can play


func insertionSort(_ array:[Int]) -> [Int] {
    var a = array
    
    for x in 1..<a.count {
        var y = x
        
        while y > 0 && a[y-1] > a[y]{
            swap(&a[y-1], &a[y])
            y -= 1
        }
    }
    return a
}

var a = [8,3,5,4,6]
insertionSort(a)
