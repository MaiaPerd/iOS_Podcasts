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
            DividerView()
            ListDetailView(imageName: "square.stack", name: "Podcasts")
            DividerView()
            ListDetailView(imageName: "checklist.unchecked", name: "Chaînes")
            DividerView()
            ListDetailView(imageName: "bookmark", name: "Enregistrés")
            DividerView()
            ListDetailView(imageName: "arrow.down.circle", name: "Téléchargés")
            DividerView()
            ListDetailView(imageName: "clock", name: "Derniers épisodes")
        }
    }
}

struct ListFilterView_Previews: PreviewProvider {
    static var previews: some View {
        ListFilterView()
    }
}
