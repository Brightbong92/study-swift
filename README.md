# Swift 개인 스터디

- 스위프트 개발이 하고 싶어서 공부하는 레포지토리입니다.

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


