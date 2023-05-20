//
//  PodcastPlayView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 19/05/2023.
//

import SwiftUI

struct PodcastPlayView: View {
    var body: some View {
    
        Rectangle().background(Material.ultraThin).frame(height: 60)//.foregroundColor(Colors.secondaryBackground)//.opacity(0.8).blur(radius: 2, opaque: true)
        Label("Flag", systemImage: "flag.fill")
            .padding()
            .background(.ultraThinMaterial)
    }
}

struct PodcastPlayView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastPlayView()
    }
}
