import UIKit


// 레인지
// 0...5

// 0..<5
//

for index in 0...5 {
//    print("호호 index: \(index)")
}

for index in 0..<5 where index % 2 == 0 {
//    print("호호 짝수 index: \(index)")
}

//var randomInts: [Int] = []
var randomInts: [Int] = [Int]()

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

//print("randomInts: \(randomInts) \(randomInts.count)")

// 옵셔널이란 ?
// 값이 있는지 없는지 모른다

var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}

print("someVariable: ", someVariable)

// 언랩핑이란? 랩 즉 감싸져있는 것을 벗기는 것  방법은 if let 이랑 guard let 방법 있음
if let otheVariable = someVariable {
    print("언래핑 되었다. 즉 값이 있다. otherVairable : \(otheVariable)")
}else {
    print("값이 없다.")
}

someVariable = nil

// someVariable 이 비어 있으면 즉 값이 없으면 기본값으로 요놈을 넣겠다.

// if let
let myValue = someVariable ?? 10 // 기본값 넣는방법
print("myValue : \(myValue)")

var firstValue : Int? = 30
var secondValue : Int? = 50

print("firstValue : \(firstValue)")
print("secondValue : \(secondValue)")


//unwrap(parameter: firstValue)
//unwrap(parameter: secondValue)
unwrap(firstValue)
unwrap(secondValue)

func unwrap(_ parameter: Int?) {
    print("unwrap() called")
    // 값이 없으면 리턴 해버린다
    // 즉 지나간다.
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}
