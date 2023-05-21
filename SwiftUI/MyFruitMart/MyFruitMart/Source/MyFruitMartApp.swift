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
        configurationAppearance()
        return WindowGroup {
            //Home(store: Store())
            MainTabView()
                .accentColor(Color.primary)
                .environmentObject(Store())
        }
    }
    
    private func configurationAppearance() {
    // large 디스플레이 모드에서 적용
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(named: "peach")!]
        // inline 디스플레이 모드일 때 적용
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(named: "peach")!]
    }
}
