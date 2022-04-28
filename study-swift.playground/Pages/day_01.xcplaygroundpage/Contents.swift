import UIKit

// 문자행 리터럴

let quotation1 = "문자열 리터럴"
let quotation2 =
"""
\n
\n
 다중행 문자열
\n
\n
\n
"""
print(quotation1, quotation2)

// 문자열 초기화
var emptyString : String = "" // var emptyString = ""
emptyString = String()
if emptyString.isEmpty {
    print("Nothing to see here")
}


// 변수, 상수
var variable = "변수";
let constant = "상수";

// 조건문

var isDarkMode : Bool = true

// if(isDarkMode == true)
if isDarkMode {
    print("다크모드 입니다.")
}else {
    print("다크모드 아닙니다.")
}


var title : String = !isDarkMode ? "다크모드에요" : "다크모드가 아니에요"

print("title: \(title)")

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



