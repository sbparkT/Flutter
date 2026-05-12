# Flutter
> 하나의 코드로 iOS, Android, Web, Desktop 앱을 모두 만들 수 있는 크로스플랫폼 프레임워크
## 📌 Flutter가 뭔가요?
 
**Flutter**는 Google이 만든 UI 프레임워크  
**Dart** 언어로 코드를 한 번만 작성하면 여러 플랫폼에서 동시에 실행
```
하나의 코드
    ↓
┌─────────────────────────────────────┐
│  📱 Android  │  🍎 iOS  │  🌐 Web  │
│  🖥️ Windows │  🍏 macOS │ 🐧 Linux │
└─────────────────────────────────────┘
```
## 🆚 Flutter vs 기존 개발 방식
 
| 구분 | 기존 방식 | Flutter |
|---|---|---|
| Android 앱 | Kotlin / Java | Dart 하나로 |
| iOS 앱 | Swift / Objective-C | Dart 하나로 |
| 웹 | HTML / JS / CSS | Dart 하나로 |
| 코드 수 | 플랫폼마다 따로 작성 | 한 번만 작성 |
| 속도 | 네이티브 수준 | 네이티브 수준 |

### Python vs Dart 비교
 
```python
# Python
name = "홍길동"
age = 17
print(f"이름: {name}, 나이: {age}")
 
def greet(name):
    return f"안녕하세요, {name}!"
```
 
```dart
// Dart
String name = "홍길동";
int age = 17;
print("이름: $name, 나이: $age");
 
String greet(String name) {
  return "안녕하세요, $name!";
}
```
 
### Dart 기본 문법
 
```dart
// 변수 선언
String  name   = "홍길동";    // 문자열
int     age    = 17;          // 정수
double  score  = 98.5;        // 실수
bool    isStudent = true;     // 불리언
var     city   = "울산";      // 타입 자동 추론
 
// 조건문
if (age >= 18) {
  print("성인입니다");
} else {
  print("미성년자입니다");
}
 
// 반복문
for (int i = 0; i < 5; i++) {
  print("$i번째");
}
 
// 리스트 (Python의 list)
List<String> fruits = ["사과", "바나나", "딸기"];
fruits.forEach((f) => print(f));
 
// 함수
int add(int a, int b) {
  return a + b;
}
```
 
---
 
## 🏗️ Flutter 앱 구조
 
Flutter에서 화면을 구성하는 모든 요소를 **Widget** 이라고 불러요.
 
```
MyApp
  └── MaterialApp
        └── Scaffold
              ├── AppBar     ← 상단 바
              ├── Body       ← 화면 내용
              │     ├── Column
              │     │     ├── Text("안녕하세요")
              │     │     ├── Image
              │     │     └── Button
              └── BottomNavigationBar
```

---
https://docs.flutter.dev/install

 <img width="214" height="135" alt="image" src="https://github.com/user-attachments/assets/32f94bb7-913a-4a7d-bcdb-c10dfbd1cc40" />
 

https://developer.android.com/studio?hl=ko
[Plugins] > [Flutter] 설치 > [Restart IDE]

https://www.oracle.com/kr/java/technologies/downloads/#java17-windows
*자바 17 설치(플러터 표준)
[시스템]> [정보] > [고급 시스템 설정] > [환경 변수]
<img width="448" height="497" alt="image" src="https://github.com/user-attachments/assets/7a62849c-aead-4743-a183-a65e55363eca" />

<img width="692" height="571" alt="image" src="https://github.com/user-attachments/assets/77ae8d49-c819-409e-9651-07ccb0d4c6da" />

<img width="462" height="607" alt="image" src="https://github.com/user-attachments/assets/401f2f25-7d1a-449e-899a-408315952fcd" />

<img width="541" height="541" alt="image" src="https://github.com/user-attachments/assets/fc584159-5bba-4338-9e93-5d2eaf292717" />
%JAVA_HOME%\bin 

---
[CMD] > java -version 실행 확인 (2번 정도 실행해보기) > 정상 확인 > flutter config --jdk-dir=$JAVA_HOME 실행 확인
---
