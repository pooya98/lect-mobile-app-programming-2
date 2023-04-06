//
//  Store.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/04/06.
//

import Foundation

final class Store {
    var products: [Product]
    
    init(filename: String = "ProductData.json") {
        self.products = Bundle.main.decode(filename: filename, as: [Product].self)
    }
}
