//
//  ImageView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 20/05/2023.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        image.resizable().frame(width: width,height: height)
            .overlay(
                  RoundedRectangle(cornerRadius: 6)
                    .stroke(.gray, lineWidth: 0.2)
              )
            .cornerRadius(6)
            .shadow(radius: 12)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("OpenJazz"), width: 200, height: 200)
    }
}
