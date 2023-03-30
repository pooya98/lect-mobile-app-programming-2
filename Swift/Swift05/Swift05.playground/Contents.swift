


/* 5강. 제어문 */



    // 5.1 반복문
        // swift에서의 반복문은 다음과 같이 있다.
            // - for 반복문
            // - while 반복문
            // - repeat-while 반복문 (C의 do..while에 해당함)


        // Swift 3에서 C Style For Loop가 삭제되고, for-in Loop와 범위를 사용한다.


        // (1) for-in 반복문
            // - 범위 연산자
for i in 0..<10 {
    print("For 반복문 \(i)")
}

            // - Array, Set과 사용
for item in [1,2,3,4,5]{
    print(item)
}

            // - 딕셔너리 (튜플로 받을 수 있다)
var dic5 : [String : String] = ["강":"river", "승":"victory"]

for (kor, eng) in dic5 {
    print("Key:\(kor), Value:\(eng)")
}

            // - 문자열
var str5 : String = "Kang"

for ch in str5 {
    print(ch)
}


        // (2) while 반복문

            // - while 구문
var i = 1
while i < 10{
    i += 1
}
    
            // - repeat-while 구문
var j : Int = 0

repeat{
    j += 1
    if j > 0 {break}
}while true




    // 5.2 조건문

        // (1) if 조건문
            // - 조건부의 괄호 생략 가능
            // - 1줄이라도 바디의 중괄호 생략 불가
if 3 > 2 {
    print("3이 2보다 크다!")
}

            // - 조건절 : 결과가 Bool
            // - nil 비교 시 '!= nil', '== nil' 을 붙어야 함.
var obj : Bool? = true
if obj != nil {}


        // (2) if else 문
            // - C와 동일


        // (3) if-let 바인딩
            // - 유효한 값을 가졌는지 판단하는 조건문(nil 여부)
            // - 사용 구조 : if let val = SomeFunc(){}
            // - 수식의 결과가 nil이 아닐 경우에만 그 반환값을 언래핑해서 let 변수에 저장한 뒤에 body 실행

//if let val = someFunc() {
//    print("\(val)")
//}


        // (4) 버전 검사
            // - #available 이라는 Annotation 이용
            // - 버전 별로, 플랫폼 별로 다른 코드를 실행시키고자 할 때 사용한다.

if #available(iOS 10, *){
    // iOS 10 이상일 때, 실행
}
else{
    // iOS 10 이전일 때, 실행
}


        // (5) 함수와 반복문에서 Exit
            // - 함수, 반복문을 마치는 것 (Exit)
            // - 정상 종료 Exit : 함수 실행 완료, 반복 조건 채우기
            // - 종료 외의 Exit : 정상 흐름과 다른 상황에서 마차기
            // - 함수나 반복문은 다수의 Exit 작성 가능
            // - Early Exit : 실행 전 조건을 먼저 검사, 조건에 맞지 않으면 Exit (break 또는 return 을 사용하여 Early Exit 진행)


        // (6) guard 문
            // - if 조건문과 유사한 사용
            // - Early Exit 용으로 사용
            // - guard [조건] else { // exit 명령 }
            // - guard 문의 바디에는 exit 명령 필수
            // - 조건 작성 방식이 if와 다르다
            // - if 문의 조건 : 진행 불가능한 상황의 조건 작성
            // - guard문의 조건 : 진행 가능한 상황의 조건 작성
            // - 바인딩 스코프 (guard문에서 선언한 변수는 guard문과 같은 레벨의 코드에서도 접근 가능


    //    func example() {
    //       guard let val = someFunc() else{
    //             // break or return
    //     }
    //       print("val은 유효한 값: \(val)")
    //    }


        // (7) switch 문
            // - C의 Switch문과는 차이가 있다.
            // - 조건에 맞는 case 하나만 실행
            // - break 불필요
            // - fallthrough : 다음 case 실행

            // - case 작성시 주의사항
                // - 모든 상황에 대한 case 작성
                // - 모든 상황에 대한 case 작성이         불가능하다면? -> default 필수

            // - 기본 switch문
var someValue = 1
switch someValue {
case 1:
    print("1")
case 2:
    print("2")
default:
    print("Other")
}

            // - 범위 연산자를 이용한 switch문
switch someValue {
case 1,2,3:
    print("1~3")
    fallthrough     // 다음 case 실행
case 4..<7:
    print("4~6")
default:
    print("Other")
}

            // - 튜플, 언더스코어[_]를 이용한 switch문
var tupleVal = (1, "One")
switch tupleVal {
case (0, "Zero"), (0, "영"):
    print("0,영")
case (1, _):        // '_'는 어떤 값이라도 된다는 의미.
    print("1,일")
default:
    print("Other")
}

            // - 밸류 바인딩을 이용한 switch문
var point = (2,2)
switch point {
case (1, let y):    // 첫 값이 1인 경우, 두 번째 값을 y에                     바인딩 시킴
    print("1,\(y)")
case (let x, 2):    // 두 번째 값이 2인 경우, 첫 값을 x에                     바인딩 시킴
    print("\(x), 2")
case let(x, y):     // 어떠한 case도 만족하지 않는다면, x,                    y에 각각을 바인딩 시킴
    print("\(x), \(y)")
}

            // - 바인딩과 조건(where)을 이용한 switch문
switch point {
case let(x, y) where x > 0:   // where을                                   만족하는 경우에만                              바인딩 시킨다.
    print("x가 0보다 크다")
case let(x, y) where x < 0 && y > 0:
    print("2사 분면")
default:
    print("그 외")
}
