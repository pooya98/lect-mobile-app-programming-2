


/* Swift 프로그래밍 8장. 클래스 */



    // 8.1 객체지향 프로그래밍

        // - OOP에 대한 이해가 충분하다고 생각해서 pass


    // 8.2 클래스와 프로퍼티

        // 클래스 정의
            // - class [클래스 이름] {}

import UIKit

class Rectangle {
    
}

        // 객체 생성
            // - [클래스 이름]()

var rect = Rectangle()


            // - var에는 새로운 객체 대입 가능, let에는 새로운 객체 대입 불가

var rect2 = Rectangle()
rect2 = Rectangle()

let rect3 = Rectangle()
// rect3 = Rectangle()  // 불가


        // 소스 코드 파일과 클래스

            // - 소스 파일 단위와 클래스 정의 단위는 서로 다름
            // - 하나의 소스 코드 파일에 다수의 클래스 작성
            // - 하나의 클래스를 개별 소스 코드 파일 생성
            // - 하나의 클래스를 다수의 소스 코드 파일에 작성 -> extension을 통해 가능함!

            // - 소스 코드 파일 생성
                // (1) Cocoa class : 클래스로 생성
                // (2) Swift File  : 비어있는 파일 생성

            // - main.swift 파일과 custom swift file
                // main.swift 파일에서는 top-level에 실행 코드 작성 가능
                // custom swift 파일에서는 타입 정의, 함수 정의 등이 가능


        // 클래스와 프로퍼티

            // - Java에서는 필드 or 멤버변수
            // - Swift에서는 저장 프로퍼티와 계산 프로퍼티, 두 가지의 프로퍼티가 있다.

                // (1) 저장 프로퍼티
                    // : 데이터를 저장하는 용도의 프로퍼티
                    // : 데이터 읽기 / 쓰기 행위 가능
                    // : 객체 생성 시 초기화 해야함.
                    // : 초기화 방법이 다양하게 존재함.

                // (2) 계산 프로퍼티
                    // : 데이터를 저장 안함.
                    // : 프로퍼티 읽기 / 쓰기 코드 작성 해줘야 함.
                    // : 읽는 경우, 다른 저장 프로퍼티의 데이터 또는 그것들의 연산 결과를 반환한다.
                    // : 쓰는 경우, 다른 프로퍼티의 값의 저장 또는 연산 후에 결과를 저장한다.
                    // : 계산 프로퍼티는
                    //      - Read 와 Write 모두 가능한 계산 프로퍼티가 있다.  -> get/set 모두 작성
                    //      - Read만 가능한 계산 프로퍼티가 있다              -> get만 작성하면 되고, get 키워드 생략가능하고, return 키워드도 생략가능하다.
                    //      - 주의 : Write만 가능한 계산 프로퍼티는 없다.

                // (3) 예시
                    // - 사각형 클래스가 있고, 그 클래스에 대한 프로퍼티를 생각해본다면..

                        // 저장 프로퍼티에는 "세로 길이", "가로 길이" 등이 있을 것이고,
                        // 계산 프로퍼티에는 "크기", "정사각형 여부" 등이 있을 것이다.


            // - 프로퍼티 사용 예시

                // (1) 저장 프로퍼티 예시

class MyClass {
    // 초기값을 설정한 프로퍼티
    var intProperty = 0
    
    // 초기값을 설정하지 않은 옵셔널 프로퍼티 -> 초기화를 하지 않으면 default값으로 nil이 저장
    var floatProperty : Float?
    
    // 에러 - 초기화 되지 않는 프로퍼티 -> Initializer를 정의하면 에러가 해결됨.
    // var strProperty : String
    
}
                    // 저장 프로퍼티에 값 저장

var obj = MyClass()

obj.intProperty = 10
obj.floatProperty = 3.1


                    // 저장 프로퍼티의 값 얻어오기

let val = obj.floatProperty
val


                // (2) 계산 프로퍼티 예시

                    // - 값을 얻어오기 (get) / 값을 설정하기 (set)

                    // - 정의 방법

                        // var [프로퍼티 이름] : [타입] {       // [타입] 생략 불가 -> 반환 타입을 의미함.
                        //      get {
                        //          return RETURN_VALUE    // 위에서 선언한 타입과 일치시켜야 함.
                        //      }
                        //      set( newValue ) {          // 블록 안에서 newValue 이름 그대로 사용하는 경우 (newValue) 생략 가능
                        //      }                          // 다른 이름으로 변경 가능하며 이 경우, (다른 이름) 생략 불가

class Person {
    // 저장 프로퍼티
    let thisYear = 2017
    var birthYear : Int = 0
    
    // 계산 프로퍼티
    var age : Int {
        get {
            return thisYear - birthYear
        }
        set {
            birthYear = thisYear - newValue
        }
    }
}




    // 8.3 메소드

        // : 클래스 내에 작성하는 함수

class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
}

        // 메소드 사용
            // - 인스턴스 생성 후 사용
            // - 메소드 호출 시, 외부 파라미터 이름 사용

let counter = Counter()

counter.increment()


        // self 포인터
            // - 자바의 this와 동일
            // - 객체 자신을 참조하는 포인터
            // - 프로퍼티 이름과 파라미터 이름이 겹칠 때 필수적으로 사용해야 함.

class Counter2 {
    var count = 0
    
    func setCount(count: Int){
        self.count = count
    }
}



    // 8.4 타입 메소드, 타입 프로퍼티

        // 자바에서 static Method와 static Property와 같은 개념

        // 타입 메소드  : 객체 생성하지 않고 호출 가능, 인스턴스 멤버/메소드/프로퍼티는 접근 불가, 타입 멤버/메소드/프로퍼티는 접근 가능
        
        // 타입 프로퍼티 : 객체 생성하지 않고, 접근 가능

class MyClass2 {
    var property = 0    // 인스턴스 프로퍼티
    static var staticProperty = 0
    
    static func typeMethod() {
        // property = 2     // 에러!
        print("Type method works")
        staticProperty = 1      // 가능!
    }
    
    func instanceMethod() {
        property = 1        // 가능!
        print("Instance method works")
        //staticProperty = 1    // 에러!
        MyClass2.staticProperty = 1     // 가능!
    }
    
}


        // 타입 메소드 사용 (vs 인스턴스 메소드 사용)

            // - 인스턴스 메소드 사용
var obj2 = MyClass2()
obj2.instanceMethod()


            // - 타입 메소드 사용
MyClass2.typeMethod()


        // 타입 프로퍼티 사용 (vs 인스턴스 프로퍼티 사용)

class Rectangle2 {
    var width : Int = 0
    
    // 계산 타입 프로퍼티 (get 전용)
    static var name : String {
        return "직사각형"
    }
    
    // 저장 타입 프로퍼티
    static var edge = 4
}

    
            // - 인스턴스 프로퍼티 사용
var obj3 = Rectangle2()
obj3.width = 10

            // - 타입 프로퍼티 사용
Rectangle2.edge
Rectangle2.name


        
        // ** 프로퍼티 변경 감시 -> willSet, didSet
            // - Initializer의 초기화 때는 동작 안함.


            // - 사용 예시

class Rectangle3 {
    // 주의 : height는 저장 프로퍼티이다. -> 초기화 하고 {}가 등장했기 떄문!
    var height : Int = 0 {
        willSet {
            print("사각형 높이 변경 예정 : \(newValue)")
        }
        didSet {
            print("사각형 높이 변경 완료. 이전값 : \(oldValue)")
        }
    }
}


        // ** 프로퍼티 늦은 초기화 -> lazy

            // - 늦은 초기화를 사용하지 않은 경우
class Phone {
    var number : String
    init() {
        print("Phone 객체 생성")
        number = "010-1234-1234"
    }
}

class Person2 {
    var phone = Phone()
}


// 정의에 따라 Person2 객체 생성과 동시에 Phone 객체 생성됨.
let obj4 = Person2()



            // - 늦은 초기화를 사용하는 경우 -> 키워드 lazy 사용

class Person3 {
    lazy var phone = Phone()
}

let john = Person3()    // - 이때 Person3 객체만 생성되고, Phone 객체는 생성되지 않음.
john.phone              // - phone 객체의 변수를 사용하는 시점에 비로소 Phone 객체가 생성됨
