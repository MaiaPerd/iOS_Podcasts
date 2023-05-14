//
//  EpisodesListView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 12/05/2023.
//

import SwiftUI


struct EpisodesListView: View {
    var podcastListEpisodes: [PodcastEpisode]
    
    var body: some View {
        VStack{
            ScrollView{
                 
                ForEach(0..<podcastListEpisodes.count) {i in
                    EpisodeDetailView(podcastEpisode: podcastListEpisodes[i])
                    Divider()
                }.frame(maxWidth: .infinity,alignment: .leading)
            }
            
        }
       
    
    }
}

struct EpisodesListView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodesListView(podcastListEpisodes: PodcastStub.getPodcast().episodes)
    }
}
