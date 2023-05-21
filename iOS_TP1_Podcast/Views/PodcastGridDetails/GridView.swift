//
//  GridView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct GridView: View {
    @State private var size: CGFloat = (UIScreen.main.bounds.width - 50) / 2
    
    var items: [Podcast]
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(items, id: \.self) { item in
                JacquetDetailGridView(image: item.image, titre: item.titre, date: "il y a 1 j", size: size, podcast: item)
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(items: PodcastStub.getListPodcast())
    }
}
