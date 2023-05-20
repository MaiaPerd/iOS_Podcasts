//
//  BibliothequeView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import SwiftUI

struct BibliothequeView: View {
    var body: some View {
        ZStack(alignment: .bottom){
            NavigationStack {
               
                    ScrollView{
                        ListFilterView()
                        VStack(alignment: .leading){
                            Text("Mis à jour récemment").font(.title2).bold().padding(.horizontal)
                            GridView()
                        }.padding(.vertical)
                            .padding(.bottom, 64)
                    
                }.navigationTitle("Bibliothèque")
    
                   
                 }.accentColor(Colors.primary)
            PodcastPlayView()
        }
          
           
        
    }
}

struct BibliothequeView_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeView()
    }
}
