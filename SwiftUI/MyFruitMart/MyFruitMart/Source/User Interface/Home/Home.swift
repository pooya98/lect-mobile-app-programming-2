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
            List(store.products) {
                product in ProductRow(product: product)
            }
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(store: Store())
    }
}
