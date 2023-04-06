//
//  Home.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/03/17.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            ProductRow()
            ProductRow()
            ProductRow()
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
