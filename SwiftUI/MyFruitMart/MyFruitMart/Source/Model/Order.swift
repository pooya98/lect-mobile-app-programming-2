//
//  Order.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/04/28.
//

import SwiftUI

struct Order: Identifiable {
    static var orderSequene = sequence(first: 1) {$0 + 1}
    
    let id: Int
    let product: Product
    let quantity: Int
    
    var price: Int {
        product.price * quantity
    }
}
