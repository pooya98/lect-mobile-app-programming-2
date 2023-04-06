//
//  MyFruitMartApp.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/03/17.
//

import SwiftUI

@main
struct MyFruitMartApp: App {
    var body: some Scene {
        WindowGroup {
            Home(store: Store())
        }
    }
}
