//
//  ImageView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 20/05/2023.
//

import SwiftUI

struct ImageView: View {
    @State private var cornerRadius: CGFloat = 6
    @State private var lineWidth: CGFloat = 0.2
    @State private var shadow: CGFloat = 12
    
    
    var image: Image
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        image.resizable()
            .frame(width: width,height: height)
            .overlay(
                  RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(.gray, lineWidth: lineWidth)
            )
            .cornerRadius(cornerRadius)
            .shadow(radius: shadow)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("OpenJazz"), width: 200, height: 200)
    }
}
