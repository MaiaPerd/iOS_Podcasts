//
//  DescriptionView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 12/05/2023.
//

import SwiftUI

struct DescriptionView: View {
    var description: String
    var note: Float
    var nbVote: Int
    var genre: String
    var rythme: String?
    
    var body: some View {
        VStack(alignment: .leading){
            Text(description)
                .lineLimit(3)
                .frame(alignment: .leading)
                .font(.system(size: 16, design: .rounded))
                  
            HStack{
                Image(systemName: "star.fill").font(.system(size: 12))
                Text("\(note.formatted(.number)) (\(nbVote))").padding(.horizontal, 0)
                Text("·").padding(.horizontal, 0)
                Text(genre).padding(.horizontal, 0)
                if rythme != nil {
                    Text("·").padding(.horizontal, 0)
                    Text(rythme!).padding(.horizontal, 0)
                }
            }.opacity(0.6)
                .font(.system(size: 14, design: .rounded))
                .padding(.top, 0.8)

        }.font(.callout)
       
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(description:PodcastStub.getPodcast().description, note: PodcastStub.getPodcast().note, nbVote: PodcastStub.getPodcast().nbVote, genre: PodcastStub.getPodcast().genre)
    }
}
