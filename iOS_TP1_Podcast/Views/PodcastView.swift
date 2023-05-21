//
//  PodcastView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct PodcastView: View {
    @State private var bottomPadding: CGFloat = 64
    @State private var buttonPadding: CGFloat = 6
    
    var body: some View {
        ScrollView{
            GridView(items: PodcastStub.getListPodcast())
                .padding(.bottom, bottomPadding)
        }.navigationTitle("Podcast")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    ButtonIconView(imageName: "ellipsis", themeColor: false, action: {}, padding: buttonPadding)
                }
            }
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView()
    }
}
