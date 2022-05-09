import UIKit

// 학생 (데이터) 모델 struct / 구조체
// 값 복사
//struct Student {
//    var name : String
//    var age: Int
//}
//
//var me = Student(name: "Jang", age: 31)
//
//var meClone = me
//
//print("me.name, age : \(me.name) \(me.age)")
//
//meClone.name = "Kim"
//meClone.age = 21
//
//print("meClone.name, age \(meClone.name) \(meClone.age)")


// 클래스
// 참조값 복사
class Student {
    var name: String
    var age : Int
    init(name : String, age: Int) {
        self.name = name
        self.age = age
    }
}

var me = Student(name: "Jang", age:31)
var meClone = me

print("참조 전 - me.name, age : \(me.name) \(me.age)")

meClone.name = "Kim"
meClone.age = 21

print("참조 후 - me.name, age \(me.name) \(me.age)")
print("meClone.name, age \(meClone.name) \(meClone.age)")



// 프로퍼티 옵저버

var myAge = 0 {
    willSet {
       print("값이 설정될 예정이다. myAge: \(myAge)")
    }
    didSet {
        print("값이 설정될 되었다. myAge: \(myAge)")
    }
}

myAge = 10
myAge = 20
myAge = 30

// 함수, 메소드 정의
func myFunction(name: String)-> String {
    return "안녕하세요?! \(name) 입니다!"
}

// 함수, 메소드를 호출한다. call
myFunction(name: "Jang")

// 함수, 메소드 정의

// 로직처리는 param값 name으로 하지만 호출할때 이름을 바꿀수있음 // 이름을 바꿀수 있다는 차이
func myFunctionSecond(with name: String) -> String {
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionSecond(with: "하이")

// 함수, 메소드 정의
// _ 가 존재하면 해당하는 호출앞에 객체 키값 안넣어줘도 된다.
func myFunctionThird(_ name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionThird("매개변수 이름 넣기 싫어")


// 제네릭
struct MyArray<T> {
    
    // 제네릭을 담은 빈 배열
    var elements : [T] = [T]()
    init(_ elements: [T]) {
        self.elements = elements
    }
}

struct Friend {
    var name : String
}

struct Coder {
    var name : String
}

var mySomeArray = MyArray([1,2,3])
print("mySomeArray : \(mySomeArray)")

var myStrigArray = MyArray(["a", "b", "c"])
print("myStrigArray : \(myStrigArray)")

var friend1 = Friend(name : "친구1")
var friend2 = Friend(name : "친구2")
var friend3 = Friend(name : "친구3")

var myFriendArray = MyArray([friend1, friend2, friend3])
print("myFriendArray : \(myFriendArray)")

// String 을 반환하는 클로저
let myName : String = {
    // myName 으로 들어간다
    return "Jang"
}()

print(myName)

// 클로저 정의
let myRealName : (String) -> String = { (name : String)-> String in
    return "개발자 \(name)"
}

myRealName("Jang")

let myRealNameLogic : (String) -> Void = { (name : String) in
    print("개발자 \(name)")
}

myRealNameLogic("길동")
