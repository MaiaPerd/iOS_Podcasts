//
//  TopPodcastDetailsView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct TopPodcastDetailsView: View {
    var podcats: Podcast
    
    var body: some View {
        VStack{
            ZStack{
                podcats.image.resizable().frame(maxWidth: .infinity).blur(radius: 100, opaque: true).padding(.top,-400)
                
                //Rectangle().foregroundColor(Colors.primary)
                VStack{
                    JacquetView(image: podcats.image, titre: podcats.titre, auteur: podcats.auteur)
                        .padding(.top,45).padding(.bottom,10)
                    
                    
                    DescriptionView(description: podcats.description, note: podcats.note, nbVote: podcats.nbVote, genre: podcats.genre)
                }.padding(15)
            }
        }}
}

struct TopPodcastDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TopPodcastDetailsView(podcats: PodcastStub.getPodcast())
    }
}
