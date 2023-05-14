//
//  EpisodeDetailsView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct EpisodeDetailsView: View {
    var podcatsEpisodes: [PodcastEpisode]
    
    
    var body: some View {
 
            LazyVStack(pinnedViews: .sectionHeaders){
                Section{
                    EpisodesListView(podcastListEpisodes: podcatsEpisodes)
                } header: {
                    TopEpisodesListView()
                }
               
                
            }
        
       
    }
}

struct EpisodeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeDetailsView(podcatsEpisodes: PodcastStub.getListPodcastEpisode())
    }
}
