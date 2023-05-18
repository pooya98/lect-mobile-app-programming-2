//
//  Home.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/03/17.
//

import SwiftUI

struct Home: View {
    //let store: Store
    @EnvironmentObject private var store: Store
    @State private var quickOrder: Product?
    
    var body: some View {
        VStack{
            Text("2017112436 강승우")
            NavigationView {
                List(store.products) { product in
                    NavigationLink(destination: ProductDetailView(product: product)) {
                        ProductRow(product: product, quickOrder: self.$quickOrder)
                    }
                }
                .navigationBarTitle("과일마트")
                .popupOverContext(item: $quickOrder, style: .blur, content: popupMessage(product:))
            }
        }
    }
    
    func popupMessage(product: Product) -> some View {
        let name = product.name.split(separator: " ").last! // (1) “수식어구+상품명” 에서
        // “상품명”을 분리함. 예를 들어, ‘백설공주 사과’에서 ‘사과’만 가져옴
        return VStack {
            Text(name) // 상품명 표시
                .font(.title).bold().kerning(3)
                .foregroundColor(.peach)
                .padding()
            
            OrderCompleteMessage() // (2) 주문 완료 메시지는 기존에 만들었던 뷰를 재활용
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        //Preview(source: Home(store: Store()))
        Preview(source: Home())
            .environmentObject(Store())
    }
}
