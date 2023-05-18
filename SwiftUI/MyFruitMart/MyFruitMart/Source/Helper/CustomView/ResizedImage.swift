//
//  ResizedImage.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/05/12.
//

import SwiftUI

struct ResizedImage: View {
    let imageName: String
    let contentMode: ContentMode
    let renderingMode: Image.TemplateRenderingMode?
    
    init(_ imageName: String,
         contentMode: ContentMode = .fill,
         renderingMode: Image.TemplateRenderingMode? = nil){
        self.imageName = imageName
        self.contentMode = contentMode
        self.renderingMode = renderingMode
    }
    
    var body: some View {
        Image(imageName)
            .renderingMode(renderingMode)
            .resizable()
            .aspectRatio(contentMode: contentMode)
    }
}

struct ResizedImage_Previews: PreviewProvider {
    static var previews: some View {
        ResizedImage("SwiftUI")
        
        Image("SwiftUI")
            .renderingMode(nil)
            .resizable()
            .aspectRatio(contentMode: .fill)
        
        ResizedImage("SwiftUI", contentMode: .fit)
        ResizedImage("SwiftUI", contentMode: .fit, renderingMode: .original)
    }
}
