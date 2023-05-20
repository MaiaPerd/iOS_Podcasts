//
//  PodcastPlayView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 19/05/2023.
//

import SwiftUI

struct PodcastPlayView: View {
    var body: some View {
        HStack{
            ImageView(image: Image("OpenJazz"), width: 50, height: 50)
                .padding(.leading, 20).padding(.vertical)
            VStack(alignment: .leading){
                Text("Podcasts")
                    .font(.system(size: 14, design: .rounded)).padding(.bottom, 0.2).lineLimit(1)
                Text("9 mai 2023") .opacity(0.6)
                    .font(.system(size: 14, design: .rounded))
            }
            Spacer()
            Image(systemName: "play.fill").padding(.horizontal, 5)
            Image(systemName: "goforward.30").padding(.trailing, 15)
               
        }.frame( height: 64)
        .background(.thinMaterial)
      
    }
}

struct PodcastPlayView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastPlayView()
    }
}
