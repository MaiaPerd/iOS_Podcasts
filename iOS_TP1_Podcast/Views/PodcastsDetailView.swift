//
//  PodcastsDetailView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 12/05/2023.
//

import SwiftUI

struct PodcastsDetailView: View {
    @State private var fontSize = 12.0
    @State private var text = ""
    @State private var bold = false
    @State private var italic = false
    
    var podcats: Podcast
    
    @State private var offset: CGFloat = 0
    @State private var startOffset: CGFloat = 0
    @State private var episodeOffset: CGFloat = 0
    
    var body: some View {
        
   
        ZStack{
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
                                print(startOffset)
                            }
                            
                            return Color.clear
                        }.frame(width: 0,height: 0)
                    )
                   /* ZStack{
                        podcats.image.resizable().frame(maxWidth: .infinity).blur(radius: 100, opaque: true).padding(.top,-400)
                        
                        //Rectangle().foregroundColor(Colors.primary)
                        VStack{
                            JacquetView(image: podcats.image, titre: podcats.titre, auteur: podcats.auteur)
                                .padding(.top,45).padding(.bottom,10)
                                .overlay(
                                    GeometryReader{proxy -> Color in
                                        let minY = proxy.frame(in: .global).minY
                                 
                                        DispatchQueue.main.async {
                                            if startOffset == 0 {
                                                startOffset = minY
                                            }
                                            offset = startOffset - minY
                                            print(startOffset)
                                        }
                                        
                                        return Color.clear
                                    }.frame(width: 0,height: 0)
                                )
      
                            DescriptionView(description: podcats.description, note: podcats.note, nbVote: podcats.nbVote, genre: podcats.genre)
                        }.padding(15)
                    }*/
                   // EpisodeDetailView(podcastEpisode: podcats.episodes)
                    LazyVStack(pinnedViews: .sectionHeaders){
                        Section{
                            EpisodesListView(podcastListEpisodes: podcats.episodes)
                        } header: {
                            TopEpisodesListView().overlay(
                                GeometryReader{proxy -> Color in
                                    let minY = proxy.frame(in: .global).minY
                             
                                    DispatchQueue.main.async {
                                        if episodeOffset == 0 {
                                            episodeOffset = minY
                                        }
                                  
                                    }
                                    
                                    return Color.clear
                                }.frame(width: 0,height: 0)
                            ).padding(.vertical,0)
                            Divider().padding(.leading,15)
                        }
                    }
                    /*TopEpisodesListView().overlay(
                        GeometryReader{proxy -> Color in
                            let minY = proxy.frame(in: .global).minY
                     
                            DispatchQueue.main.async {
                                if episodeOffset == 0 {
                                    episodeOffset = minY
                                }
                          
                            }
                            
                            return Color.clear
                        }.frame(width: 0,height: 0)
                    ).padding(.vertical,0)
                    
                    EpisodesListView(podcastListEpisodes: podcats.episodes)*/
                }.overlay(
                    GeometryReader{proxy -> Color in
                        let minY = proxy.frame(in: .global).minY
                 
                        print(minY)
                        
                        return Color.clear
                    }.frame(width: 0,height: 0)
                )
            }
             //   .toolbarColorScheme(.dark, for: .navigationBar)
           // .toolbarBackground(.hidden, for: .navigationBar)
           
               
                    //.navigationTitle("Podcast")
            
           
            
            TopNavBarView().offset(CGSize(width: 0, height: -350))//-300
                .opacity(getDiplay())
            /*TopEpisodesListView().offset(CGSize(width: 0, height: -336)).opacity(getDiplay2())*/
        }.toolbar {
            /*ToolbarItem(placement: .navigationBarLeading){
                Button(action: {}){
                    Text("Retour").foregroundColor(Colors.primary).font(.body)
                }
            }*/
            ToolbarItem(placement: .navigationBarTrailing){
                HStack{
                    ButtonIconView(imageName: "checkmark", themeColor: false)
                    ButtonIconView(imageName: "ellipsis", themeColor: false)
                }
             
            }
        }.navigationTitle(podcats.titre)  .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(getToolBarDisplay())
              
    
    }
    
    func getDiplay()->Double{
        if offset < (startOffset-15) {
            return 1
        }
        return 0
    }
    
    
    func getDiplay2()->Double{
        if offset < (episodeOffset-100) {
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

