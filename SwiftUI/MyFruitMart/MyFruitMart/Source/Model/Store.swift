//
//  Store.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/04/06.
//

import Foundation

final class Store: ObservableObject {
    @Published var products: [Product]
    @Published var orders: [Order] = []
    
    init(filename: String = "ProductData.json") {
        self.products = Bundle.main.decode(filename: filename, as: [Product].self)
    }
}

extension Store {
    func toggleFavorite(of product: Product) {
//        guard let index = products.firstIndex(where: {$0.id == product.id }) else {
//            return
//        }
        guard let index = products.firstIndex(of: product) else {
            return
        }
        products[index].isFavorite.toggle()
    }
    
    func placeOrder(product: Product, quantity: Int) {
        let nextId = Order.orderSequene.next()!
        let order = Order(id: nextId, product: product, quantity: quantity)
        orders.append(order)
    }
}
