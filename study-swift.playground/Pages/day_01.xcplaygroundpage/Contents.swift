import UIKit

var isDarkMode : Bool = true

// if(isDarkMode == true)
if isDarkMode {
    print("다크모드 입니다.")
}else {
    print("다크모드 아닙니다.")
}

var title : String = !isDarkMode ? "다크모드에요" : "다크모드가 아니에요"

print("title: \(title)")
