//
//  main.swift
//  Hello_CommandLineTool
//
//  Created by 강승우 on 2023/03/10.
//

import Foundation

print("Hello, World!")
// main.swift에서는 top-level에 실행코드 작성 가능

class MyClass {
    var intProperty = 0
    var floatProperty : Float = 0.0
    
    // 에러 - 초기화되지 않는 프로퍼티는 ': Initializer 필요'
    // var strProperty : String
}

var obj = MyClass()
obj.intProperty = 10
obj.floatProperty = 3.1

let val = obj.floatProperty
// val

