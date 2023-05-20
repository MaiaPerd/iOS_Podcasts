//
//  JacquetView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 12/05/2023.
//

import SwiftUI

struct JacquetView: View {
    var image: Image
    var titre: String
    var auteur: String
    
    var body: some View {
        VStack{
            ImageView(image: image, width: 200, height: 200)
            Text(titre)
                .fontWeight(.bold)
                .font(.system(size: 18, design: .rounded))
            HStack{
                Text(auteur).opacity(0.6)
                    .font(.system(size: 16, design: .rounded))
            }
        }
    }
}

struct JacquetView_Previews: PreviewProvider {
    static var previews: some View {
        JacquetView(image: Image("OpenJazz"), titre: "titre", auteur: "auteur")
    }
}
