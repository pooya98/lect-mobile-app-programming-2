//
//  Symbol.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/05/12.
//

import SwiftUI

struct Symbol: View {
    let systemName: String
    let imageScale: Image.Scale
    let color: Color?
    
    init(_ systemName: String,
         imageScale: Image.Scale = .medium,
         color: Color? = nil) {
        self.systemName = systemName
        self.imageScale = imageScale
        self.color = color
    }
    var body: some View {
        Image(systemName: systemName)
            .imageScale(imageScale)
            .foregroundColor(color)
    }
}

struct Symbol_Previews: PreviewProvider {
    static var previews: some View {
        Symbol("heart.fill")
        
        Image(systemName: "heart.fill")
            .imageScale(.medium)
            .foregroundColor(nil)
        
        Symbol("heart.fill", imageScale: .large)
        Symbol("heart.fill").foregroundColor(.red)
        Symbol("heart.fill").imageScale(.large)
    }
}
