//
//  Home.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/03/17.
//

import SwiftUI

struct Home: View {
    let store: Store
    
    var body: some View {
        VStack{
            Text("2017112436 강승우")
            NavigationView {
                List(store.products) { product in
                    NavigationLink(destination: ProductDetailView(product: product)) {
                        ProductRow(product: product)
                    }
                }
                .navigationBarTitle("과일마트")
            }
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Preview(source: Home(store: Store()))
    }
}
