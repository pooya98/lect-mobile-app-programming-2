//
//  Popup.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/05/18.
//

import SwiftUI

enum PopupStyle {
    case none
    case blur
    case dimmed
}


struct Popup<Message: View>: ViewModifier { // ViewModifier 프로토콜 채택
    let size: CGSize? // 팝업창의 크기
    let style: PopupStyle // 앞에서 정의한 팝업 스타일
    let message: Message // 팝업창에 나타낼 메시지
    
    init(
        size: CGSize? = nil,
        style: PopupStyle = .none,
        message: Message
    ){
        self.size = size
        self.style = style
        self.message = message
    }
    func body(content: Content) -> some View { content // (1) - 팝업창을 띄운 뷰
        .blur(radius: style == .blur ? 2 : 0) // blur 스타일인 경우에만 적용
        .overlay(Rectangle() // dimmed 스타일인 경우에만 적용
            .fill(Color.black.opacity(style == .dimmed ? 0.4 : 0)))
        .overlay(popupContent) // 팝업창으로 표현될 뷰
    }
    private var popupContent: some View {
        GeometryReader {
            VStack { self.message } // (2) - 팝업창에서 표시할 메시지
                .frame(width: self.size?.width ?? $0.size.width * 0.6, // (3)
                       height: self.size?.height ?? $0.size.height * 0.25) .background(Color.primary.colorInvert())
                .cornerRadius(12)
                .shadow(color: .primaryShadow, radius: 15, x: 5, y: 5) .overlay(self.checkCircleMark, alignment: .top)
                .position(x: $0.size.width/2, y: $0.size.height/2) // (4) 팝업창 위치 - 부모뷰의 중앙
        }
    }
    // 팝업창 상단에 위치한 체크 마크 심벌
    private var checkCircleMark: some View {
        Symbol("checkmark.circle.fill", color: .peach)
            .font(Font.system(size: 60).weight(.semibold)) //
            .offset(x: 0, y: -20) // 팝업창 상단에 걸쳐지도록 원래 위치보다 위로 가도록 조정
    }
    
}

fileprivate struct PopupToggle: ViewModifier { // ViewModifier 프로토콜 채택
    @Binding var isPresented: Bool // true 일때만 팝업창 표현
    func body(content: Content) -> some View {
        content
            .disabled(isPresented) // (1)
            .onTapGesture { self.isPresented.toggle() } // 팝업창 종료
    }
}

extension View {
    func popup<Content: View>(
        isPresented: Binding<Bool>,
        size: CGSize? = nil,
        style: PopupStyle = .none,
        @ViewBuilder content: () -> Content // (2)
    ) -> some View {
        if isPresented.wrappedValue {       // (3)
            let popup = Popup(size: size, style: style, message: content())
            let popupToggle = PopupToggle(isPresented: isPresented)
            let modifiedContent = self.modifier(popup).modifier(popupToggle)
            return AnyView(modifiedContent)
        } else {
            return AnyView(self)
        }
    }
    
    func popup<Content: View, Item: Identifiable>( // popup 수식어 정의
        item: Binding<Item?>,
        size: CGSize? = nil,
        style: PopupStyle = .none,
        @ViewBuilder content: (Item) -> Content
      ) -> some View {
        if let selectedItem = item.wrappedValue {
          let content = content(selectedItem)
          let popup = Popup(size: size, style: style, message: content)
          let popupItem = PopupItem(item: item)
          let modifiedContent = self.modifier(popup).modifier(popupItem)
          return AnyView(modifiedContent)
    } else {
          return AnyView(self)
        }
    }
}

extension View {
    func popupOverContext<Item: Identifiable, Content: View>( // (1)
        item: Binding<Item?>,
        size: CGSize? = nil,
        style: PopupStyle = .none,
        ignoringEdges edges: Edge.Set = .all,
        @ViewBuilder content: (Item) -> Content
    ) -> some View {
        let isNonNil = item.wrappedValue != nil
        return ZStack { // (2)
            self
                .blur(radius: isNonNil && style == .blur ? 2 : 0) // (3)
            if isNonNil { // 아이템이 있을 경우에만
                Color.black
                .luminanceToAlpha() // (4)
                .popup(item: item, size: size, style: style, content: content) // (5)
                .edgesIgnoringSafeArea(edges) // (6)
            }
        }
    }
}

fileprivate struct PopupItem<Item: Identifiable>:ViewModifier {
    @Binding var item: Item? // nil이 아니면 팝업 표시
    func body(content: Content) -> some View {
        content
            .disabled(item != nil) // 팝업이 떠 있는 동안 다른 뷰에 대한 상호 작용 비활성화
            .onTapGesture { self.item = nil } // 팝업창 제거
    }
    
}
