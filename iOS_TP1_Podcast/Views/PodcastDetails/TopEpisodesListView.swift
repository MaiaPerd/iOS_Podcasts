//
//  TopEpisodesListView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import SwiftUI

struct TopEpisodesListView: View {
    
    @State private var selectedEpisode: EpisodeEnum = .allEpisode

    var body: some View {
        HStack{
            Menu{
                Picker("Épisodes", selection: $selectedEpisode) {
                    Label("Téléchargés", systemImage: "arrow.down").tag(EpisodeEnum.download)
                    Label("Non lus", systemImage: "circle").tag(EpisodeEnum.noRead)
                    Text("Tous les épisodes").tag(EpisodeEnum.allEpisode)
                }.accentColor(.black)
            } label: {
                Text(selectedEpisode.rawValue)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                Image(systemName: "chevron.down")
                    .foregroundColor(Colors.primary).fontWeight(.bold)
                   
            }.id(selectedEpisode)
     
            Spacer()
            Text("Tout voir").foregroundColor(Colors.primary)
        }.padding(.horizontal)
            .frame(height: 50)
            .background(Color.white)
    }
}

struct TopEpisodesListView_Previews: PreviewProvider {
    static var previews: some View {
        TopEpisodesListView()
    }
}
