//
//  MainTabView.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/05/19.
//

import SwiftUI

struct MainTabView: View {
    private enum Tabs {
        case home, recipe, gallery, myPage
    }
    
    @State private var selectedTab: Tabs = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            home
            recipe
            imageGallery
            myPage
        }
        .edgesIgnoringSafeArea(.top)
    }
    
    var home : some View {
        Home()
            .tag(Tabs.home)
            .tabItem(image: "house", text: "홈")
    }
    var recipe : some View {
        Text("레시피")
            .tag(Tabs.recipe)
            .tabItem(image: "book", text: "레시피")
    }
    var imageGallery : some View {
        Text("이미지 갤러리")
            .tag(Tabs.recipe)
            .tabItem(image: "photo.on.rectangle", text: "갤러리")
    }
    var myPage : some View {
        Text("마이페이지")
            .tag(Tabs.myPage)
            .tabItem(image: "person", text: "마이페이지")
    }
}

fileprivate extension View {
    func tabItem(image: String, text: String) -> some View {
        self.tabItem {
            Symbol(image, imageScale: .large)
                .font(Font.system(size: 17, weight: .light))
            Text(text)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .accentColor(Color.primary)
            .environmentObject(Store())
    }
}
