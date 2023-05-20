//
//  ListDetailView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct ListDetailView: View {
    @State private var fontSize = 12.0
    
    var imageName: String
    var name: String
    
    var body: some View {
        NavigationLink(destination: PodcastView()){
            HStack{
                Image(systemName: imageName)
                    .font(.title2)
                    .foregroundColor(Colors.primary)
                Text(name).font(.title2).foregroundColor(Colors.textColor)
                Spacer()
                Image(systemName: "chevron.right").foregroundColor(.gray)
            }
        }.padding(.horizontal)
        
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(imageName: "square.stack", name: "Podcasts")
    }
}
