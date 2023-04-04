//
//  ContentView.swift
//  Chapter02
//
//  Created by gsjung on 2023/03/10.
//

import SwiftUI

// 교재 p.61, chapter 02_1 p.5
//
//struct ContentView: View {
//    var body: some View {
//        VStack(spacing: 30) {       // 세로 방향으로 뷰를 배열하는 컨테이너 뷰
//            Text("폰트와 굵기 설정")
//                .font(.title)       // 폰트 설정
//                .fontWeight(.black) // 폰트 굵기
//
//            Text("글자색은 foreground, 배경은 background")
//                .foregroundColor(.white)    // 글자색
//                .padding()                  // 텍스트 주변 여백 설정
//                .background(Color.blue)     // 텍스트의 배경 설정(Color 명시)
//
//            Text("커스텀 폰트, 볼드체, 이탤릭체, 밑줄, 취소선")
//                .font(.custom("Menlo", size: 16))   // 커스텀 폰트 설정
//                .bold()             // 볼드체
//                .italic()           // 이탤릭체
//                .underline()        // 밑줄
//                .strikethrough()    // 취소선
//
//            Text("라인 수 제한과 \n 텍스트 정렬 기능입니다. \n 이건 안 보입니다.")
//                .lineLimit(2)       // 텍스트를 최대 2줄까지만 표현
//                .multilineTextAlignment(.trailing)  // 다중행 문자열의 정렬 방식 지정
//                .fixedSize()        // 주어진 공간의 크기가 작아도 텍스트를 생략하지 않고 표현되도록 설정
//
//            // 2개 이상의 텍스트를 하나로 묶어서 동시에 적용할 수도 있습니다.
//            (Text("자간과 기준선").kerning(8) // 자간
//             + Text(" 조정도 쉽게 가능합니다")).baselineOffset(8) // 기준선
//                .font(.system(size: 16))
//
//        }
//    }
//}


// 교재 p.63, chapter 02_1 p.11
//
//struct ContentView: View {
//    var body: some View {
//        VStack(spacing: 30) {
//            Text("SwiftUI")
//                .font(.title)   // Text - 호출자의 타입이 Text이므로 다시 Text 반환
//                .bold()         // Text
//                .padding()      // View - padding 수식어 호출 이후에는 Text가 아닌 View 반환
//
//            Text("SwiftUI")
//                .bold()         // Text
//                .padding()      // View
//                .font(.title)   // View - 동일한 font 수식어를 호출해도 호출자에 따라 반환 타입이 다름
//
//            Text("SwiftUI")
//                .padding()      // View
//                .bold()         // View
//                .font(.title)   // View
//
//            Text("SwiftUI")
//                .padding()      // View
//                .font(.title)   // View
//                .bold()         // View
//
//        }
//    }
//}

// 교재 p.65, chapter 02_1 pp.14~15
//
//struct ContentView: View {
//    var body: some View {
//        VStack(spacing: 30) {
//
//            // 수식어 적용 순서에 무관한 예
//            Text("Hello, SwiftUI!")
//                .font(.largeTitle)      // Text
//                .foregroundColor(.red)  // Text
//
//            Text("Hello, SwiftUI!")
//                .foregroundColor(.red)  // Text
//                .font(.largeTitle)      // Text
//
//            // 수식어 적용 순서에 따라 다른 결과를 보이는 예
//            Text("🐶🐱🐰🦊")
//                .font(.largeTitle)          // Text
//                .background(Color.yellow)   // View
//                .padding()                  // View
//
//            Text("🐶🐱🐰🦊")
//                .font(.largeTitle)          // Text
//                .padding()                  // View
//                .background(Color.yellow)   // View
//
//        }
//    }
//}

//  교재 p.67, chapter 02_1 p.16
//
//struct ContentView: View {
//    var body: some View {
//        HStack {
//            Image("SwiftUI")
//            Image("SwiftUI").frame(width: 50, height: 50)
//            Image("SwiftUI").frame(width: 200, height: 200)
//        }
//    }
//}

//  교재 p.68, chapter 02_1 p.17
//
//struct ContentView: View {
//    var body: some View {
//        HStack {
//            Image("SwiftUI")
//            Image("SwiftUI")
//                .resizable()
//                .frame(width: 50, height: 50)
//            Image("SwiftUI")
//                .resizable()
//                .frame(width: 200, height: 200)
//        }
//    }
//}


// 교재 pp.68~69, chapter 02_1 p.19 ver1
//
//struct ContentView: View {
//    var body: some View {
//        HStack {
//            Image("SwiftUI")
//                .resizable(capInsets: .init(top: 0, leading: 50, bottom:0, trailing: 0))
//                .frame(width: 150, height: 150)
//            Image("SwiftUI")
//                .resizable(resizingMode: .tile)
//                .frame(width: 150, height: 150)
//        }
//    }
//}


// 교재 pp.68~69, chapter 02_1 p.19 ver2
//
//struct ContentView: View {
//    var body: some View {
//        HStack {
//            // capInset 매개 변수에 늘어나지 않을 영역 지정. resizingMode 생략 시 stretch 적용
//            Image("SwiftUI")
//                .resizable(capInsets: .init(top: 0, leading: 50, bottom:0, trailing: 0))
//                .frame(width: 150, height: 150)
//            Image("SwiftUI")
//                .resizable(resizingMode: .tile)
//                .frame(width: 150, height: 150)
//        }
//    }
//}


// 교재 pp.70 ~ 71, chapter 02_1 p.24,  contentMode
//
//struct ContentView: View {
//    var body: some View {
//        HStack(spacing:30) {
//            // UIKit의 Scale To Fill이 기본값으로 적용
//            Image("SwiftUI").resizable()
//                .frame(width: 100, height: 150)
//
//            Image("SwiftUI").resizable()
//                .scaledToFit()  // UIKit의 Aspect Fit 효과 적용
//                .frame(width: 100, height: 150)
//
//            Image("SwiftUI").resizable()
//                .scaledToFill()  // UIKit의 Aspect Fill 효과 적용
//                .frame(width: 100, height: 150)
//                //.clipped()  // UIView와 clipsToBounds 활성화 효과. 프레임을 벗어나는 이미지 제거
//        }
//    }
//}


// 교재 pp.71 ~ 72, chapter 02_1 p.25, aspectRatio
//
//struct ContentView: View {
//    var body: some View {
//        HStack(spacing:30) {
//            // scaledToFit 콘텐츠 모드를 적용한 뒤, 너비가 높이보다 1.6배의 비율을 가지도록 조정
//            Image("SwiftUI").resizable()
//                .aspectRatio(CGSize(width: 1.6, height: 1), contentMode: .fit)
//                .frame(width: 150, height: 150)
//
//            // scaledToFill 콘텐츠 모드를 적용한 뒤, 너비가 높이보다 0.7배의 비율을 가지도록 조정
//            Image("SwiftUI").resizable()
//                .aspectRatio(0.7, contentMode: .fill)
//                .frame(width: 150, height: 150)
//                //.clipped()
//        }
//    }
//}


// 교재 pp.72 ~ 73, chapter 02_1 p.25, clipShape
//
//struct ContentView: View {
//    var body: some View {
//        HStack(spacing:30) {
//            Image("SwiftUI").clipShape(Circle().inset(by: 10))    // 원
//            Image("SwiftUI").clipShape(
//                Rectangle().inset(by: 10)   // 이미지 크기보다 사방으로 10씩 크기를 줄인 사각형
//            )
//            Image("SwiftUI").clipShape(
//                Ellipse().path(in: CGRect(x: 10, y: 10, width: 80, height: 110))
//            )
//
//        }
//    }
//}


// 교재 pp.73 ~ 74, chapter 02_1 p.27, renderingMode
//
//struct ContentView: View {
//    var body: some View {
//        HStack(spacing:30) {
//            Image("SwiftUI")   // 렌더링 코드 생략 시 시스템이 결정
//            Image("SwiftUI").renderingMode(.original)   // 원본 이미지 색상 유지
//            Image("SwiftUI").renderingMode(.template)
//        }
//        .foregroundColor(.red)  // 자식 뷰 모두에 일괄 적용
//    }
//}

// 교재 pp.76 ~ 77, chapter 02_1 p.31, SF Symbols 사용
//
//struct ContentView: View {
//    var body: some View {
//        HStack(spacing:20) {
//            Image(systemName: "star.circle")
//            Image(systemName: "star.circle.fill")
//        }
//    }
//}


// 교재 p.77, chapter 02_1 p.32, imageScale
//
//struct ContentView: View {
//    var body: some View {
//        HStack(spacing:30) {
//            Image(systemName: "book.fill").imageScale(.small).foregroundColor(.red)
//            Image(systemName: "book.fill").imageScale(.medium).foregroundColor(.green)
//            Image(systemName: "book.fill").foregroundColor(.green)  //  기본값
//            Image(systemName: "book.fill").imageScale(.large).foregroundColor(.blue)
//            //Image("SwiftUI").imageScale(.large) // 적용 안 됨
//
//        }
//    }
//}


// 교재 p.78, chapter 02_1 p.33, font
//
//struct ContentView: View {
//    var body: some View {
//        HStack(spacing:30) {
//            Image(systemName: "speaker.3").font(.body)
//            Image(systemName: "speaker.3").font(.title)
//            Image(systemName: "speaker.3").font(.system(size: 40))
//            Image(systemName: "speaker.3").imageScale(.large).font(.system(size: 40))
//
//        }
//    }
//}

// 교재 p.78, chapter 02_1 p.36, weight
//struct ContentView: View {
//    var body: some View {
//        HStack(spacing:30) {
//            Image(systemName: "arrow.up").font(Font.title.weight(.black))
//            Image(systemName: "arrow.left").font(Font.title.weight(.semibold))
//            Image(systemName: "arrow.down").font(Font.title.weight(.light))
//            Image(systemName: "arrow.right").font(Font.title.weight(.ultraLight))
//        }
//    }
//}

// 교재 p.80, chapter 02_1 p.38, 스택
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("Hello")
//            Text("SwiftUI")
//        }
//    }
//}


// 교재 p.81, chapter 02_1 p.39, 스택
//
//struct ContentView: View {
//    var body: some View {
//        ZStack{    // HStack, VStack, ZStack으로 수정해 보기
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 150, height: 150)
//                .offset(x: 40, y: 40) // ZStack인 경우 적용해 보기
//        }
//    }
//}


// 교재 p.86, chapter 02_1 p.42, HStack alignment v1
//
//struct ContentView: View {
//    var body: some View {
//        HStack(alignment: .top){ // .top, .center, .bottom 변경해 보기
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 200)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 150, height: 150)
//        }
//    }
//}

// 교재 p.86, chapter 02_1 p.43, HStack alignment v2
//
//struct ContentView: View {
//    var body: some View {
//        HStack(alignment: .bottom){ // .top, .center, .bottom 변경해 보기
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 150, height: 550)
//        }
//    }
//}


// 교재 p.86, chapter 02_1 p.44, VStack alignment
//
//struct ContentView: View {
//    var body: some View {
//        VStack(alignment: .center){ // .leading, .center, .trailing 변경해 보기
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 150)
//        }
//    }
//}


// 교재 p.86, chapter 02_1 p.45, ZStack alignment
//
//struct ContentView: View {
//    var body: some View {
//        ZStack(alignment: .bottom){ //.topLeading, .top, .topTrailing,
//                                        //.leading, .center, .trailing,
//                                        //.bottomLeading, .bottom, .bottomTrailing 변경해 보기
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 50, height: 50)
//        }
//    }
//}


// 교재 p.87, chapter 02_1 p.46, 스택 수식어 활용
//
//struct ContentView: View {
//    var body: some View {
//        HStack {
//            Text("HStack").font(.title).foregroundColor(Color.blue)
//            Text("은 뷰를 가로로 배열합니다.")
//            Text("!")
//        }
//        .padding()
//        .border(Color.black)
//        .font(.largeTitle)
//    }
//}


// 교재 p.89, chapter 02_1 p.48, Spacer - 스택 외부 및 내부 단독 사용
//
// 1)
//struct ContentView: View {
//    var body: some View {
//        Spacer().background(Color.mint) // 공간 최대 확장. 시각적 요소 표현 가능
//    }
//}

// 2)
//struct ContentView: View {
//    var body: some View {
//        ZStack{
//            Spacer().background(Color.mint) // 공간 최대 확장. 시각적 요소 표현 가능
//        }
//    }
//}


// 3) HStack or VStack
//struct ContentView: View {
//    var body: some View {
//        HStack{
//            Spacer().background(Color.mint) //  출력되는 내용 없음
//        }
//    }
//}


// 교재 pp.90 ~ 91, chapter 02_1 p.53, Spacer
// 스택 내 다른 요소와 함께 포함된 경우 - HStack
//
// v1
//struct ContentView: View {
//    var body: some View {
//        HStack {
//            Spacer().background(Color.mint) // 공간 차지, 배경색 무시
//            Text("Spacer").font(.title).background(Color.yellow)
//        }
//    }
//}

// v2
//struct ContentView: View {
//    var body: some View {
//        HStack {
//            Spacer()
//            Text("Spacer").font(.title).background(Color.yellow)
//        }
//        .background(Color.mint) // HStack의 배경색 지정
//    }
//}

// v3
//struct ContentView: View {
//    var body: some View {
//        HStack {
//            Spacer().frame(width: 80)
//            Text("Spacer").font(.title).background(Color.yellow)
//        }
//        .background(Color.mint)
//    }
//}


// 교재 p.91, chapter 02_1 p.57, Spacer minLength 미지정
//
//struct ContentView: View {
//    var body: some View {
//        HStack {
//            Text("Spacer MinLength").font(.title).foregroundColor(Color.white)
//            Spacer()
//            Text("Spacer").font(.title).background(Color.yellow)
//        }
//        .background(Color.mint)
//
//    }
//}


// 교재 p.91, chapter 02_1 p.57, Spacer minLength 지정
//
//struct ContentView: View {
//    var body: some View {
//        HStack {
//            Text("Spacer MinLength").font(.title).foregroundColor(Color.white)
//            Spacer(minLength: 100)
//            Text("Spacer").font(.title).background(Color.yellow)
//        }
//        .background(Color.mint)
//
//    }
//}


// 교재 p.92, chapter 02_1 p.58, Spacer
// 스택 내 다른 요소와 함께 포함된 경우 - VStack, ZStack
//struct ContentView: View {
//    var body: some View {
//        ZStack {    // VStack, ZStack을 비교
//            Spacer()
//            Text("Spacer").font(.title).background(Color.yellow)
//        }
//        .background(Color.mint)
//
//    }
//}

// test
//struct ContentView: View {
//    var body: some View {
//        ZStack {
//            Circle()
//            Spacer()
//            Text("Spacer").font(.title).background(Color.yellow)
//        }
//        .background(Color.mint)
//    }
//}


// 교재 p.93, chapter 02_1 p.61
// Color.clear or Rectangle - 부모 뷰의 크기만큼 커지는 확장성 뷰
//
//struct ContentView: View {
//    var body: some View {
//        ZStack {
//            //Color.clear
//            //Rectangle()
//            Rectangle().opacity(0)
//            Text("Spacer").font(.title).background(Color.yellow)
//        }
//        .background(Color.white)
//    }
//}


// 교재 p.93, chapter 02_1 p.63, Spacer를 이용한 뷰 레이아웃
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("제목").font(.largeTitle)
//            Text("부제목").foregroundColor(Color.gray)
//            Spacer()        // (1)
//            Text("본문 내용")
//            Spacer()        // (2)
//            Spacer()        // (3)
//            Text("각주").font(.body)
//        }
//        .font(.title)
//        .frame(width: 200, height: 350)
//        .padding()
//        .border(Color.blue, width: 2)
//    }
//}


// 교재 pp.96~97, chapter 02_1 p.64, 스택 조합하기 Step 1
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("도형 만들기").font(.largeTitle).fontWeight(.heavy)
//            HStack {
//                Text("둥근 모양").font(.title)
//            }
//            HStack {
//                Text("각진 모양").font(.title)
//            }
//        }.padding()
//    }
//}


// 교재 pp.96~97, chapter 02_1 p.65, 스택 조합하기 Step 2
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("도형 만들기").font(.largeTitle).fontWeight(.heavy)
//            HStack {
//                Text("둥근 모양").font(.title)
//                Spacer()
//            }
////            ZStack{
////                Rectangle().frame(height: 10)
////                HStack{
////                    Circle().fill()
////                    Ellipse().fill()
////                    Capsule().fill()
////                    RoundedRectangle(cornerRadius: 30).fill()
////                }
////            }
//            HStack {
//                Text("각진 모양").font(.title)
//                Spacer()
//            }
////            ZStack{
////                Rectangle().frame(height: 10)
////                HStack {
////                    Color.red
////                    Rectangle().fill(.blue)
////                    RoundedRectangle(cornerRadius: 0).fill(.purple)
////                }
////            }
//        }.padding()
//    }
//}


// 교재 p.98, chapter 02_1 p.66, 스택 조합하기 Step 3
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("도형 만들기").font(.largeTitle).fontWeight(.heavy)
//            HStack {
//                Text("둥근 모양").font(.title)
//                Spacer()
//            }
//            ZStack {
//                // 사각형의 높이를 10으로 주어 선으로 사용
//                Rectangle().frame(height: 10)
//                HStack {
//                    Circle().fill(.yellow)  // 원. Color.yellow
//                    Ellipse().fill(.green)  // 타원
//                    Capsule().fill(.orange) // 캡슐
//                    RoundedRectangle(cornerRadius: 30).fill(.gray) // 둥근 모서리 사각형
//                }
//            }
//            HStack {
//                Text("각진 모양").font(.title)
//                Spacer()
//            }
//        }.padding()
//    }
//}


// 교재 p.99, chapter 02_1 p.67, 스택 조합하기 Step 4
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("도형 만들기").font(.largeTitle).fontWeight(.heavy)
//            HStack {
//                Text("둥근 모양").font(.title)
//                Spacer()
//            }
//            ZStack {
//                // 사각형의 높이를 10으로 주어 선으로 사용
//                Rectangle().frame(height: 10)
//                HStack {
//                    Circle().fill(.yellow)  // 원
//                    Ellipse().fill(.green)  // 타원
//                    Capsule().fill(.orange) // 캡슐
//                    RoundedRectangle(cornerRadius: 30).fill(.gray) // 둥근 모서리 사각형
//                }
//            }
//            HStack {
//                Text("각진 모양").font(.title)
//                Spacer()
//            }
//            ZStack {
//                Rectangle().frame(height: 10)
//                HStack {
//                    Color.red // SwiftUI에서는 컬러 그 자체도 하나의 뷰에 해당
//                    Rectangle().fill(.blue)
//                    RoundedRectangle(cornerRadius: 0).fill(.purple)
//                }
//            }
//        }.padding()
//    }
//}


// 교재 p.101, chapter 02_1 p.68, ZStack를 사용한 중첩뷰
//
//struct ContentView: View {
//    var body: some View {
//        ZStack {
//            Rectangle().fill(.green).frame(width: 150, height: 150)
//            Rectangle().fill(.yellow).frame(width: 150, height: 150)
//        }
//    }
//}


// 교재 p.101, chapter 02_1 p.68, overlay를 사용한 중첩뷰(위로...)
//
//struct ContentView: View {
//    var body: some View {
//        Rectangle().fill(.green).frame(width: 150, height: 150)
//            .overlay(                       // 초록색 사각형 위로 뷰 추가
//                Rectangle().fill(.yellow).frame(width: 100, height: 100, alignment: .center)   // 크기를 정해 주지 않으면 초록색 사각형과 동일 크기
//            )
//
//    }
//}


// 교재 p.102, chapter 02_1 p.69, background를 사용한 중첩뷰(아래로...)
//
//struct ContentView: View {
//    var body: some View {
//        Rectangle().fill(.yellow).frame(width: 150, height: 150)
//            .background(   // 노란색 사각형 아래 새로운 뷰 추가
//                Rectangle().fill(.green).frame(width: 200, height: 200)   // overlay 코드와 색이 반대가 된 것을 주목
//            )
//
//    }
//}


// 교재 p.102, chapter 02_1 p.70, overlay와 background - alignment 매개변수
//
//struct ContentView: View {
//    var body: some View {
//        Circle()
//            .fill(.yellow.opacity(0.8)) // 배경으로 추가된 뷰를 볼 수 있도록 투명도 설정
//            .frame(width: 250, height: 250)
//            // overlay
//            .overlay(Text("Joystick").font(.largeTitle))
//            .overlay(Image(systemName: "arrow.up").font(.title).padding(), alignment: .top)
//            .overlay(Image(systemName: "arrow.left").font(.title).padding(), alignment: .leading)
//            .overlay(Image(systemName: "arrow.up.right.circle.fill").font(.title), alignment: .topTrailing)
//            // background
//            .background(Image(systemName: "arrow.down").font(.title).padding(), alignment: .bottom)
//            .background(Image(systemName: "arrow.right").font(.title).padding(), alignment: .trailing)
//    }
//}



// 교재 p.103, chapter 02_1 p.70, vs ZStack
//
struct ContentView: View {
    var body: some View {
        ZStack{
            VStack {
                Spacer()
                Image(systemName: "arrow.down").font(.title).padding()
            }
            HStack{
                Spacer()
                Image(systemName: "arrow.right").font(.title).padding()
            }
            Circle()
                .fill(.yellow.opacity(0.8))
                .frame(width: 250, height: 250)
            Text("Joystick").font(.largeTitle)
            ZStack(alignment: .topTrailing) {
                Color.clear
                Image(systemName: "arrow.up.right.circle.fill").font(.title)
            }
            VStack {
                Image(systemName: "arrow.up").font(.title).padding()
                Spacer()
            }
            HStack {
                Image(systemName: "arrow.left").font(.title).padding()
                Spacer()
            }
        }.frame(width: 250, height: 250)
    }
}



// MARK: - Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
