//
//  JacquetView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 12/05/2023.
//

import SwiftUI

struct JacquetView: View {
    @State private var imageSize: CGFloat = 200
    @State private var titleSize: CGFloat = 18
    @State private var textSize: CGFloat = 16
    @State private var opacity: CGFloat = 0.6
    
    var image: Image
    var titre: String
    var auteur: String
    
    var body: some View {
        VStack{
            ImageView(image: image, width: imageSize, height: imageSize)
            Text(titre)
                .fontWeight(.bold)
                .font(.system(size: titleSize, design: .rounded))
            HStack{
                Text(auteur)
                    .opacity(opacity)
                    .font(.system(size: textSize, design: .rounded))
            }
        }
    }
}

struct JacquetView_Previews: PreviewProvider {
    static var previews: some View {
        JacquetView(image: Image("OpenJazz"), titre: "titre", auteur: "auteur")
    }
}
