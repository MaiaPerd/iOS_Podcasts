//
//  ListFilterView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct ListFilterView: View {
    var body: some View {
        VStack{
            ListDetailView(imageName: "square.stack", name: "Podcasts")
            Divider()
            ListDetailView(imageName: "checklist.unchecked", name: "Chaînes")
            Divider()
            ListDetailView(imageName: "bookmark", name: "Enregistrés")
            Divider()
            ListDetailView(imageName: "arrow.down.circle", name: "Téléchargés")
            Divider()
            ListDetailView(imageName: "clock", name: "Derniers épisodes")
        }.padding(.horizontal)
    }
}

struct ListFilterView_Previews: PreviewProvider {
    static var previews: some View {
        ListFilterView()
    }
}
