//
//  GridView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct GridView: View {
    var items: [Podcast] = PodcastStub.getListPodcast()
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
       
        LazyVGrid(columns: columns) {
                        ForEach(items, id: \.self) { item in
                            JacquetDetailGridView(image: item.image, titre: item.titre, date: "il y a 1 j", size: (UIScreen.main.bounds.width - 50) / 2, podcast: item)
                        }
        }.padding(.horizontal)
                    
                /*Grid {
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
                    GridRow {
                        HStack{
                            JacquetDetailGridView(image: items[4].image, titre: items[4].titre, date: "il y a 1 j", podcast: items[4])
                            Spacer()
                        }.padding()
                    }
        
                }*/
                
        }
        
    
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
