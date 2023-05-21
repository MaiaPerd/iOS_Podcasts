//
//  BibliothequeView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import SwiftUI

struct BibliothequeView: View {
    @State private var horizontalPadding: CGFloat = 2
    @State private var bottomPadding: CGFloat = 64
    
    var body: some View {
        ZStack(alignment: .bottom){
            NavigationStack {
                ScrollView{
                    ListFilterView()
                    DividerView()
                    VStack(alignment: .leading){
                        Text("Mis à jour récemment").font(.title2).bold()
                            .padding(.horizontal, horizontalPadding)
                        GridView(items: PodcastStub.getListPodcast())
                    }.padding()
                        .padding(.bottom, bottomPadding)
                }.navigationTitle("Bibliothèque")
            }.accentColor(Colors.primary)
            PodcastPlayView(podcast: PodcastStub.getPodcast())
        }
    }
}

struct BibliothequeView_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeView()
    }
}
