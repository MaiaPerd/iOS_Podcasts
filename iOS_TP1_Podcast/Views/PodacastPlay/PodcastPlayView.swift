//
//  PodcastPlayView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 19/05/2023.
//

import SwiftUI

struct PodcastPlayView: View {
    @State private var imageSize: CGFloat = 50
    @State private var paddingLeading: CGFloat = 20
    @State private var textSize: CGFloat = 14
    @State private var paddingTextBottom: CGFloat = 0.2
    @State private var lineLimit: Int = 1
    @State private var textOpacity: CGFloat = 0.6
    @State private var paddingHorizontal: CGFloat = 5
    @State private var paddingTrailing: CGFloat = 15
    @State private var frameHeight: CGFloat = 64
    @State private var themeBackground: Material = Material.bar
    
    var podcast: Podcast

    var body: some View {
        HStack{
            ImageView(image: podcast.image, width: imageSize, height: imageSize)
                .padding(.leading, paddingLeading)
                .padding(.vertical)
            VStack(alignment: .leading){
                Text(podcast.episodes[0].titre)
                    .font(.system(size: textSize, design: .rounded))
                    .padding(.bottom, paddingTextBottom)
                    .lineLimit(lineLimit)
                Text(podcast.episodes[0].date, format: .dateTime.day().month().year())
                    .environment(\.locale, Locale(identifier: "fr"))
                    .opacity(textOpacity)
                    .font(.system(size: textSize, design: .rounded))
            }
            Spacer()
            Image(systemName: "play.fill")
                .padding(.horizontal, paddingHorizontal)
            Image(systemName: "goforward.30")
                .padding(.trailing, paddingTrailing)
        }.frame(height: frameHeight)
            .background(themeBackground)
    }
}

struct PodcastPlayView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastPlayView(podcast: PodcastStub.getPodcast())
    }
}
