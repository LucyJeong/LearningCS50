//: Playground - noun: a place where people can play

import UIKit

var array = [5,3,4,6,8,2,9,1,7,10,11]
var sortedArray = NSMutableArray(array: array)
var sortedAboveIndex = array.count
var swapCounter = 0

repeat {
    var lastSwapIndex = 0
    
    for i in 1..<sortedAboveIndex {
        if sortedArray[i-1] as! Int > sortedArray[i] as! Int {
            sortedArray.exchangeObject(at: i, withObjectAt: i-1)
            lastSwapIndex = i
            swapCounter += 1
        }
    }
    sortedAboveIndex = lastSwapIndex
}while (sortedAboveIndex != 0)

print(sortedArray)


func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    let middleIndex = array.count / 2
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    return merge(leftPile: leftArray, rightPile: rightArray)
}

func merge(leftPile:[Int], rightPile:[Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    
    var orderedPile = [Int]()
    
    while leftIndex < leftPile.count && rightIndex < rightPile.count {
        
        if leftPile[leftIndex] < rightPile[rightIndex] {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        }
        else if leftPile[leftIndex] > rightPile[rightIndex] {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
        else {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftPile.count  {
        orderedPile.append(leftPile[leftIndex])
        leftIndex += 1
    }
    while rightIndex < rightPile.count {
        orderedPile.append(rightPile[rightIndex])
        rightIndex += 1
    }
    print(orderedPile)
    return orderedPile
    
}

var arrayInt: [Int] = [4,8,6,2,1,7,5,3]
mergeSort(arrayInt)

func selectionSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else{ return array }
    
    var a = array
    
    for x in 0..<a.count - 1 {
        var lowset = x
        
        for y in x + 1 ..< a.count {
            if a[y] < a[lowset] {
                lowset = y
            }
        }
        
        if x != lowset {
            swap(&a[x], &a[lowset])
        }
    }
    return a
    
}

selectionSort(arrayInt)

public struct Stack<T> {
    fileprivate var array = [T]()
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
}
