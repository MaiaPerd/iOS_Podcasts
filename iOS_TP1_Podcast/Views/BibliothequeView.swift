//
//  BibliothequeView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import SwiftUI

struct BibliothequeView: View {
    var body: some View {
   
            NavigationView {
               
                    ScrollView{
                        ListFilterView()
                        VStack{
                            Text("Mis à jour récemment").font(.title2).bold()
                            GridView()
                        }.padding(.vertical)
                    
                }.navigationTitle("Bibliothèque")
                   
                
                    // .navigationTitle("Podcast")
                 }
           
        
    }
}

struct BibliothequeView_Previews: PreviewProvider {
    static var previews: some View {
        BibliothequeView()
    }
}
