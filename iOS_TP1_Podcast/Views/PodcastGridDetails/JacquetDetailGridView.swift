//
//  JacquetDetailGridView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct JacquetDetailGridView: View {
    var image: Image
    var titre: String
    var date: String
    var podcast: Podcast
    
    var body: some View {
        NavigationLink( destination: PodcastsDetailView(podcats: podcast)){
            VStack{
                image.resizable().frame(width: 180,height: 180)
                    .cornerRadius(6)
           
            
                Text(titre).lineLimit(1).foregroundColor(Colors.textColor)
          
                Text("Mise à jour: "+date).foregroundColor(.gray)
                
               
            }.frame(alignment: .leading)
        }
       
    }
}

struct JacquetDetailGridView_Previews: PreviewProvider {
    static var previews: some View {
        JacquetDetailGridView(image: Image(systemName: "photo"), titre: "Podcasts", date: "Il y a 3 j", podcast: PodcastStub.getPodcast())
    }
}
