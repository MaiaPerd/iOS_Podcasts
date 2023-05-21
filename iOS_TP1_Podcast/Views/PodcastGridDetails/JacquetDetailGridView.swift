//
//  JacquetDetailGridView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct JacquetDetailGridView: View {
    @State private var cornerRadius: CGFloat = 6
    @State private var lineLimit: Int = 1
    @State private var textSize: CGFloat = 16

    var image: Image
    var titre: String
    var date: String
    var size: CGFloat
    var podcast: Podcast
    
    var body: some View {
        NavigationLink( destination: PodcastsDetailView(podcats: podcast)){
            VStack(alignment: .leading){
                image.resizable()
                    .frame(width: size,height: size)
                    .cornerRadius(cornerRadius)
              
                Text(titre)
                    .lineLimit(lineLimit)
                    .foregroundColor(Colors.textColor)
                    .font(.system(size: textSize, design: .rounded))
                    
                Text("Mise à jour: "+date)
                    .foregroundColor(.gray)
                    .font(.system(size: textSize, design: .rounded))
    
            }
        }
       
    }
}

struct JacquetDetailGridView_Previews: PreviewProvider {
    static var previews: some View {
        JacquetDetailGridView(image: Image(systemName: "photo"), titre: "Podcasts", date: "Il y a 3 j", size: 140, podcast: PodcastStub.getPodcast())
    }
}
