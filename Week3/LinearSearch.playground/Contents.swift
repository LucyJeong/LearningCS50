//: Playground - noun: a place where people can play

//Equatable: == or != 연산자를 사용하여 값이 동일한지 판단할 수 있는 타입입니다. 이 프로토콜을 채택하면 해당 타입을 위한 == 연산자를 구현해야합니다. 그러면 표준라이브러리에서 != 연산자를 자동으로 구현해줍니다.

func linearSearch<T:Equatable>(_ array: [T],_ object: T) -> Int? {
    
    for (index, obj) in array.enumerated() where obj == object{
        return index
    }
    return nil
}

var a = [1,3,4,5,43,3,34,52,50]
linearSearch(a, 50)

