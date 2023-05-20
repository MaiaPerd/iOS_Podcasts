//
//  BibliothequeView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import SwiftUI

struct BibliothequeView: View {
    var body: some View {
        ZStack{
            NavigationStack {
               
                    ScrollView{
                        ListFilterView()
                        VStack{
                            Text("Mis à jour récemment").font(.title2).bold()
                            GridView()
                        }.padding(.vertical)
                    
                }.navigationTitle("Bibliothèque")
                   
                
                    // .navigationTitle("Podcast")
                 }
          //  PodcastPlayView().offset(y: 300)
        }.frame(alignment: .bottom)
          
           
        
    }
}

struct BibliothequeView_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeView()
    }
}
