//
//  EpisodeDetail.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 12/05/2023.
//

import SwiftUI

struct EpisodeDetailView: View {
    var podcastEpisode: PodcastEpisode

    var body: some View {
        VStack(alignment: .leading){
            Text("Lundi")
                .fontWeight(.bold)
                .foregroundColor(.gray)
            Text(podcastEpisode.titre)
                .font(.title3)
                .fontWeight(.bold)
            
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 3, trailing: 0))
            Text(podcastEpisode.description)
                .lineLimit(3)
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 2, leading: 0, bottom: 3, trailing: 0))
            HStack{
                Image(systemName: "play.circle.fill").foregroundColor(Colors.primary)
                if podcastEpisode.heures != 0 {
                    Text("\(podcastEpisode.heures) h").foregroundColor(Colors.primary)
                }
                Text("\(podcastEpisode.minutes) min").foregroundColor(Colors.primary)
                Spacer()
                Image(systemName: "ellipsis").foregroundColor(.gray)
            }
        }.padding(.horizontal)
    }
}

struct EpisodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeDetailView(podcastEpisode: PodcastStub.getListPodcastEpisode().first!)
    }
}
