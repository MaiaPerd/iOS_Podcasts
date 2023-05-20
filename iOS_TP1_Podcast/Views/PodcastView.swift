//
//  PodcastView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct PodcastView: View {
    var body: some View {
        ScrollView{
            GridView()
        }.navigationTitle("Podcast")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                  
                        ButtonIconView(imageName: "ellipsis", themeColor: false)
                    
                 
                }
                
            }
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView()
    }
}
