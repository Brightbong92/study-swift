# Swift 개인 스터디

- 스위프트 개발이 하고 싶어서 공부하는 레포지토리입니다.

## Reference 
- 유튜브 
- https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html
- <a href="https://yagom.net/" target="_blank" rel="noopener noreferrer">야곰</a>

## Online Code Playground
http://online.swiftplayground.run/

<br />

``` swift
// 변수, 상수
var variable = "변수";
let constant = "상수";
```


``` swift
// 문자행 리터럴
let quotation = "문자열 리터럴"
let quotationStr =
"""
\n
\n
 다중행 문자열
\n
\n
\n
"""
print(quotation1, quotation2)
```

``` swift
// 문자열 초기화
var emptyString : String = "" // var emptyString = ""
emptyString = String()
if emptyString.isEmpty {
    print("Nothing to see here")
}
```

``` swift
// 조건문
if isDarkMode {
    print("다크모드 입니다.")
}else {
    print("다크모드 아닙니다.")
}
var title : String = !isDarkMode ? "다크모드에요" : "다크모드가 아니에요"

```

``` swift
// 반복문
// 콜렉션 : 데이터를 모아둔 것
// 배열, 셋, 딕셔너리, 튜플
// 배열
var array : [Int] = [0,1,2,3,4,5,6,7,8,9,10]

for item in array {
    print("item : \(item)")
}

for item in array where item > 5 {
    print("5보다 큰수 : \(item)")
}

for item in array where item % 2 == 0 {
    print("짝수: \(item)")
}

```

``` swift
// enum
// 타입을 나눈다
enum School {
    case elementary
    case middle
    case high
    // case elementary, middle, high
}

let yourSchool = School.elementary
print("yourSchool: \(yourSchool)")

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
var gradeValue = Grade.second.rawValue;

print("yourGraade: \(yourGrade) \(gradeValue)")

enum SchoolDetail {
    case elemenrary(name: String)
    case middle(name: String)
    case high(name : String)
    
    func getName() -> String {
        switch self {
        case .elemenrary(let name):
            return name
        case .middle(let name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "중학교")
print("yourMiddleSchoolName: \(yourMiddleSchoolName)")

```

``` swift
// 레인지

// 0...5
// 0,1,2,3,4,5

// 0..<5
// 0,1,2,3,4

for index in 0...5 {
 print(index: \(index)")
}

for index in 0..<5 where index % 2 == 0 {
 print("짝수: \(index)")
}


for _ in 0..<25 {
 let randomNumber = Int.random(in: 0...100)
 randomInts.append(randomNumber)
}

print("randomInts: \(randomInts) \(randomInts.count)")
```

``` swift
// 옵셔널이란?
// 값이 있는지 없는지 모른다

var someVariable : Int? = nil

if someVariable == nil {
 someVariable = 90
}

print("someVariable: ", someVariable) // Optional(90)


// 언랩핑이란? 랩 즉 감싸져있는 것을 벗기는 것

// if let 방식
// if let 안에서 옵셔널 바인딩 된 상수는 해당 블럭 안에서만 변수 사용 가능

if let otherVariable = someVariable {
  print("언래핑 되었다. 즉 값이 있다. otherVairable : \(otherVariable)") // 언래핑 되었다. 즉 값이 있다. otherVairable : 90
}else {
  print("값이 없다")
}

// 기본값 넣는방법
let myValue = someVariable ?? 10 
print("myValue : \(myValue)") // myValue: 10

// guard let 방식

var firstValue : Int? = 30
var secondValue : Int? = 50

print("firstValue : \(firstValue)") // firstValue : Optional(30)
print("secondValue : \(secondValue)") // secondValue : Optional(50)

// 함수 사용 시 함수 () 안에 _ parameter 가 되었을 시 parameter를 생략가능, 그렇지 않을경우 parameter: 를 붙여줘야 한다.
// unwrap(parameter: firstValue)
// unwrap(parameter: secondValue)
unwrap(firstValue) // 30
unwrap(secondValue) // 50

func unwrap(_ parameter: Int?) { // or func unwrap(parameter: Int?)
  // 값이 없으면 리턴 해버린다.
  // 즉 지나간다.
  
  guard let unWrappedParam = parameter else {
    return
  }
  print("unWrappedParam: \(unWrappedParam)")
}


```

``` swift
// struct / 구조체
// 값 복사
// 값만 복사되는 개념, 참조 후에도 메모리에 할당된 주소가 복사된것이 아니기에 기존 me 객체는 기존값으로 유지가 된다.
struct Student {
    var name : String
    var age : Int
}

var me = Student(name: "Jang", age: 31)

var meClone = me

print("참조 전 - me.name, age : \(me.name) \(me.age)") // me.name, age : Jang 31

meClone.name = "Kim" // 참조 후
meClone.age = 21 // 참조 후

print("참조 후 - me.name, age : \(me.name) \(me.age)") // me.name, age : Jang 31
print("참조 후 - meClone.name, age : \(meClone.name) \(meClone.age)") // meClone.name, age : Kim 21

```

``` swift
// 클래스
// 주소값 복사


class Student {
   var name : String
   var age : Int
   init(name : String, age: Int) {
     self.name = name
     self.age = age
   }
}

var me = Student(name: "Jang", age:31)
var meClone = me // 클래스의 경우, 메모리 주소값이 복사가되는 개념, 링킹이 된다 생각하면된다. 그리하여 meClone 값이 변경될 시 me의 값도 같이 변경된다.

print("참조 전 - me.name, age : \(me.name) \(me.age)") // 참조 전 - me.name, age : Jang 31

meClone.name = "Kim"
meClone.age = 21

print("참조 후 - me.name, age \(me.name) \(me.age)") // 참조 후 - me.name, age Kim 21
print("참조 후 - meClone.name, age \(meClone.name) \(meClone.age)") // 참조후 -  meClone.name, age Kim 21

```
``` swift
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
// 값이 설정될 예정이다. myAge: 0
// 값이 설정될 되었다. myAge: 10

myAge = 20
// 값이 설정될 예정이다. myAge: 10
// 값이 설정될 되었다. myAge: 20

myAge = 30
// 값이 설정될 예정이다. myAge: 20
// 값이 설정될 되었다. myAge: 30

```

``` swift

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

myFunctionSecond(with: "hi 에이치아이")

// 함수, 메소드 정의
// _ 가 존재하면 해당하는 호출앞에 객체 키값 안넣어줘도 된다.
func myFunctionThird(_ name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionThird("매개변수 이름 넣기 싫어")

```

``` swift 

// xCode13 부터 colorLiteral 과 imageLiteral 이 작동하지 않게되었음.


@State var textFieldText : String = ""
let myGray = Color(#colorLiteral(red: 0.9403803662, green: 0.9403803662, blue: 0.9403803662, alpha: 1))

var body : some View {
  ScrollView {
    VStack {
     TextField("Literal Test", text: $textValue)
//    .background(Color(#colorLiteral(...)) // X , View안에서는 리터럴 사용이 안된다.
     .background(myGray) // 변수로 빼서 사용하면 된다.
    }
  }
}
```

``` swift
// Hashble struct 객체를 ForEach에서 사용할 경우는 id 프로퍼티를 구별 해줄수있는 Identifiable 프로토콜이 required 이다.

// ItemModel.swift
import Foundation

struct ItemModel : Identifiable {
    let id: String = UUID().uuidString
    let title :String
    let isCompleted : Bool
}


// ListView.swift
struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title", isCompleted: false),
        ItemModel(title: "This is the second!", isCompleted: true),
        ItemModel(title: "Third!", isCompleted: false),
    ]
    
    var body: some View {
        List {
        // Referencing initializer 'init(_:content:)' on 'ForEach' requires that 'ItemModel' conform to 'Identifiable'
        // Model에 Identifiable이 없다면 에러가 나온다.
        List {
            ForEach(items) {item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}
```

