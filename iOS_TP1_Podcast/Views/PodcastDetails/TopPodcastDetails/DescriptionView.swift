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
            HStack{
                Image(systemName: "star.fill")
                Text("\(note)")
                Text("(\(nbVote))")
                Text(" . ")
                Text(genre)
                if rythme != nil {
                    Text(" . ")
                    Text(rythme!)
                }
             
            }
        }
       
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(description: "decription", note: Float(0.0), nbVote: 0, genre: "")
    }
}
