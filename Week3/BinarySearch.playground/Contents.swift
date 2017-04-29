let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

let a = [1,2,3,4]

func binarySearch<T:Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
    
    if range.lowerBound >= range.upperBound {
        return nil
    }else {
        var midIndex = range.lowerBound + (range.upperBound - range.lowerBound)/2
        
        if a[midIndex] == key{
            return a[midIndex]
        }
        else if a[midIndex] > key {
            return binarySearch(a, key: key, range: range.lowerBound..<midIndex)
        }
        else {
            return binarySearch(a, key: key, range: midIndex+1..<range.upperBound)
        }
    }
}

binarySearch(numbers, key: 3, range: 0..<numbers.count)


func binarySearch2<T: Comparable>(_ a: [T], key: T) -> Int? {
    var lowerBound = 0
    var upperBound = a.count
    while lowerBound < upperBound {
        let midIndex = lowerBound + (upperBound - lowerBound) / 2
        if a[midIndex] == key {
            return midIndex
        } else if a[midIndex] < key {
            lowerBound = midIndex + 1
        } else {
            upperBound = midIndex
        }
    }
    return nil
}
binarySearch2(a, key: 4)
binarySearch2(numbers, key: 23)

