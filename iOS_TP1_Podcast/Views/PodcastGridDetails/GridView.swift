//
//  GridView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct GridView: View {
    var items: [Podcast] = PodcastStub.getListPodcast()
    
    var body: some View {
       
            
                Grid {
                    GridRow {
                        HStack{
                            JacquetDetailGridView(image: items.first!.image, titre: items.first!.titre, date: "il y a 1 j", podcast: items.first!)
                            Spacer()
                            JacquetDetailGridView(image: items[1].image, titre: items[1].titre, date: "il y a 1 j",podcast: items[1])
                        }.padding()
                    }
                    GridRow {
                        HStack{
                            JacquetDetailGridView(image: items[2].image, titre: items[2].titre, date: "il y a 1 j", podcast: items[2])
                            Spacer()
                            JacquetDetailGridView(image: items[3].image, titre: items[3].titre, date: "il y a 1 j", podcast: items[3])
                        }.padding()
                    }
        
                }
                
        }
        
    
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
