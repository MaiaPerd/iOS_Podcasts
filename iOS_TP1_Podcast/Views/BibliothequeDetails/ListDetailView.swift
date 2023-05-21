//
//  ListDetailView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct ListDetailView: View {
    @State private var fontSize = 14.0
    @State private var opacity = 0.6
    
    var imageName: String
    var name: String
    
    var body: some View {
        NavigationLink(destination: PodcastView()){
            HStack(alignment: .center){
                Image(systemName: imageName)
                    .font(.title2)
                    .foregroundColor(Colors.primary)
                Text(name)
                    .font(.title2)
                    .foregroundColor(Colors.textColor)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                    .bold()
                    .font(.system(size: fontSize))
                    .opacity(opacity)
            }
        }.padding(.horizontal)
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(imageName: "square.stack", name: "Podcasts")
    }
}
