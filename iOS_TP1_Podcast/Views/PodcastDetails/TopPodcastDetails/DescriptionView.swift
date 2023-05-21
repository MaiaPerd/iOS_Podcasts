//
//  DescriptionView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 12/05/2023.
//

import SwiftUI

struct DescriptionView: View {
    @State private var padding: CGFloat = 0
    @State private var lineLimit: Int = 3
    @State private var textSize: CGFloat = 16
    @State private var textBottomSize: CGFloat = 14
    @State private var imageSize: CGFloat = 14
    @State private var opacity: CGFloat = 0.6
    @State private var paddingTop: CGFloat = 0.8
    

    var description: String
    var note: Float
    var nbVote: Int
    var genre: String
    var rythme: String?
    
    var body: some View {
        VStack(alignment: .leading){
            Text(description)
                .lineLimit(lineLimit)
                .frame(alignment: .leading)
                .font(.system(size: textSize, design: .rounded))
                  
            HStack{
                Image(systemName: "star.fill").font(.system(size: imageSize))
                Text("\(note.formatted(.number)) (\(nbVote))").environment(\.locale, Locale(identifier: "fr")).padding(.horizontal, padding)
                Text("·").padding(.horizontal, padding)
                Text(genre).padding(.horizontal, padding)
                if rythme != nil {
                    Text("·").padding(.horizontal, padding)
                    Text(rythme!).padding(.horizontal, padding)
                }
            }.opacity(opacity)
                .font(.system(size: textBottomSize, design: .rounded))
                .padding(.top, paddingTop)

        }.font(.callout)
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(description:PodcastStub.getPodcast().description, note: PodcastStub.getPodcast().note, nbVote: PodcastStub.getPodcast().nbVote, genre: PodcastStub.getPodcast().genre)
    }
}
