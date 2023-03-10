//
//  ContentView.swift
//  HelloSwift
//
//  Created by 강승우 on 2023/03/10.
//

import SwiftUI

// 핵심코드를 나타내는 부분
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        // 수식어(modifier)
    }
}


// - ':View' : View 프로토콜을 채택하여 따른다는 의미 (Conform the Protocol)

// - [control] + [command] + [click] : Jump to Definition

// - 우측 상단에 [+버튼]을 이용하여 다양한 라이브러리를 이용할 수 있음.

// - 라이브러리에서 사용할 컴포넌트들을 코드나 프리뷰로 드래그하여 이용할 수 있음.

// - 우측의 인스펙터를 통해 다양한 modifier들을 관리할 수 있음.

// - [command] + [click] : 다양한 Action 목록을 확인할 수 있음.

// - PlayGround에서도 SwiftUI를 활용할 수 있다.







// 우측의 Preview와 ContentView를 연결하는 부분
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        // ContentView 객체 생성
        // ContentView에서 정의한 대로 프리뷰에서 보임
    }
}

// * ContentView_Previews 부분을 수정하는 경우는 극히 드물다.
