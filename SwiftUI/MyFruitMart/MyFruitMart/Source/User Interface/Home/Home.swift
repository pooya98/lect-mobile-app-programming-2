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
    @State private var showingFavoriteImage: Bool = false
    
    var body: some View {
        VStack{
            Text("2017112436 강승우")
            NavigationView {
                VStack {
                    if showFavorite {
                        favoriteProducts
                    }
                    darkerDivider
                    
                    if #available(iOS 16.0, *){
                        productList
                            .scrollContentBackground(.hidden)
                            .background(Color.yellow)
                    }
                    else {
                        productList
                    }
                }
            }
            .popupOverContext(item: $quickOrder, style: .blur, content: popupMessage(product:))
        }
    }
    
    var productList : some View {
        List(store.products) { product in
            if #available(iOS 15.0, *){
                ZStack {
                    ProductRow(product: product, quickOrder: self.$quickOrder)
                    NavigationLink(destination: ProductDetailView(product: product)) {
                        EmptyView()
                    }.opacity(0)
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color.background)
            }
            else {
                ZStack {
                    ProductRow(product: product, quickOrder: self.$quickOrder)
                    NavigationLink(destination: ProductDetailView(product: product)) {
                        EmptyView()
                    }.opacity(0)
                }
                .listRowBackground(Color.background)
            }
            
//            HStack {
//                ProductRow(product: product, quickOrder: self.$quickOrder)
//                NavigationLink(destination: ProductDetailView(product: product)) {
//                    EmptyView()
//                }.frame(width: 0).opacity(0)
//            }
        }
        .navigationBarTitle("과일마트")
    }
    
    var favoriteProducts: some View { // 즐겨찾는 상품 목록
        FavoriteProductScrollView(showingImage: $showingFavoriteImage)
        .padding(.top, 24)
        .padding(.bottom, 8)
    }
    var darkerDivider: some View { // 커스텀 구분선
        Color.primary
        .opacity(0.3)
        .frame(maxWidth: .infinity, maxHeight: 1)
    }
    
    var showFavorite: Bool { // 즐겨찾는 상품 유무 확인
        !store.products.filter({ $0.isFavorite }).isEmpty
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
