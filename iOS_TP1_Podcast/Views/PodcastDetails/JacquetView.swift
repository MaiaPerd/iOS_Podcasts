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
    
    @State private var labelButton = "Dernier épisode"
    
    var body: some View {
        VStack{
            image.resizable().frame(width: 200,height: 200).cornerRadius(6)
        
            Text(titre)
                .fontWeight(.bold)
            HStack{
                Text(auteur)
            }
            Button(action: {}) {
                Label(labelButton, systemImage: "play.fill").padding(EdgeInsets.init(top: 0, leading: 25, bottom: 0, trailing: 25)).fontWeight(.bold)
            }.foregroundColor(.black)
                .frame(width: 280,height: 50)
                .background(Colors.secondaryBackground)
                .cornerRadius(15)
        }
    }
}

struct JacquetView_Previews: PreviewProvider {
    static var previews: some View {
        JacquetView(image: Image(systemName: "photo"), titre: "", auteur: "")
    }
}