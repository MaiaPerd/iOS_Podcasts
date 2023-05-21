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
        ForEach(podcastListEpisodes, id: \.self) { podcastEp in
            EpisodeDetailView(podcastEpisode: podcastEp)
            DividerView()
        }.frame(maxWidth: .infinity,alignment: .leading)
    }
}

struct EpisodesListView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodesListView(podcastListEpisodes: PodcastStub.getPodcast().episodes)
    }
}
