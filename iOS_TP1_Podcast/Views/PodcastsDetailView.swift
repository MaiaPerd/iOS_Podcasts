//
//  PodcastsDetailView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 12/05/2023.
//

import SwiftUI

struct PodcastsDetailView: View {
    @State private var frame: CGFloat = 0
    @State private var paddingBottom: CGFloat = 64
    @State private var paddingButton: CGFloat = 7
    @State private var horrizontalPadding: CGFloat = 6
    @State private var size: CGFloat = 10
    
    var podcats: Podcast
    
    @State private var offset: CGFloat = 0
    @State private var startOffset: CGFloat = 0
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack(alignment: .top){
            ScrollView(showsIndicators: true) {
                VStack{
                    TopPodcastDetailsView(podcats: podcats)
                        .overlay(
                            GeometryReader{proxy -> Color in
                                let minY = proxy.frame(in: .global).minY
                     
                                DispatchQueue.main.async {
                                    if startOffset == 0 {
                                        startOffset = minY
                                    }
                                    offset = startOffset - minY
                                }
                                
                                return Color.clear
                            }.frame(width: frame, height: frame)
                        )
                    LazyVStack(pinnedViews: .sectionHeaders){
                        Section{
                            EpisodesListView(podcastListEpisodes: podcats.episodes)
                        } header: {
                            TopEpisodesListView()
                        }
                    }
                }.overlay(
                    GeometryReader{proxy -> Color in
                        let minY = proxy.frame(in: .global).minY
                 
                        print(minY)
                        
                        return Color.clear
                    }.frame(width: frame, height: frame)
                ).padding(.bottom, paddingBottom)
            }
            TopNavBarView().opacity(getDiplay())
        }.toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                HStack{
                    ZStack(alignment: .bottomTrailing){
                        ButtonIconView(imageName: "arrow.down", themeColor: false, action: {}, padding: paddingButton)
                            .padding(.horizontal, horrizontalPadding)
                        Image(systemName: "pause.circle.fill")
                            .foregroundColor(Colors.primary).frame(width: size, height: size)
                    }
                    
                    ButtonIconView(imageName: "ellipsis", themeColor: false, action: {}, padding: paddingButton)
                }
            }
        }.navigationTitle(podcats.titre)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(getToolBarDisplay())
            .toolbarBackground(getVisibility(), for: .navigationBar)
            
    }
    
    func getDiplay()->Double{
        if offset < (startOffset-15) {
            return 1
        }
        return 0
    }
    
    func getVisibility()->Visibility{
        if offset < (startOffset-15) {
            return Visibility.hidden
        }
        return Visibility.visible
    }
    
    func getDiplay2()->Double{
       /* if  (startOffset-20) < offset  {
            return (offset-startOffset)*0.01
        }*/
        if offset < (startOffset-15) {
            return 0
        }
        return 1
    }
    
    func getToolBarDisplay()->Bool{
        if offset < (startOffset-15) {
            return true
        }
        return false
    }
}

struct PodcastsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastsDetailView(podcats: PodcastStub.getListPodcast()[3])
    }
}

