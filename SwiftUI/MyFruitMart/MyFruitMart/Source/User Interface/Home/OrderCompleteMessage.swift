//
//  OrderCompleteMessage.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/05/18.
//

import SwiftUI

struct OrderCompleteMessage: View {
    var body: some View {
        Text("주문 완료!")
            .font(.system(size: 24))
            .bold() // 볼드체
            .kerning(2) // 자간 조정
    }
}

struct OrderCompleteMessage_Previews: PreviewProvider {
    static var previews: some View {
        Color.primary.colorInvert()
            .popup(isPresented: .constant(true)) { OrderCompleteMessage() }
            .edgesIgnoringSafeArea(.vertical)
    }
}
