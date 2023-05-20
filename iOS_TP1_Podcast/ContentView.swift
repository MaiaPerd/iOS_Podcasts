//
//  ContentView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 11/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .bibliotheque
    
    enum Tab {
        case noConstruct
        case bibliotheque
    }

    var body: some View {
        TabView(selection: $selection) {
            NoView(title: "Écouter")
                .tabItem {
                    Label("Écouter", systemImage: "play.circle")
                }
                .tag(Tab.noConstruct)
            NoView(title: "Explorer")
                .tabItem {
                    Label("Explorer", systemImage: "square.grid.2x2.fill")
                }
                .tag(Tab.noConstruct)
            BibliothequeView()
                .tabItem {
                    Label("Bibliothèque", systemImage: "square.stack.fill")
                }
                .tag(Tab.bibliotheque)

            NoView(title: "Recherche")
                .tabItem {
                    Label("Recherche", systemImage: "magnifyingglass")
                }
                .tag(Tab.noConstruct)
        }.accentColor(Colors.primary)
            
            
    }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
