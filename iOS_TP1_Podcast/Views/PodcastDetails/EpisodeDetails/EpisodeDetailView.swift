//
//  EpisodeDetail.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 12/05/2023.
//

import SwiftUI

struct EpisodeDetailView: View {
    @State private var fontDateSize: CGFloat = 12
    @State private var fontTitleSize: CGFloat = 16
    @State private var fontTextSize: CGFloat = 15
    @State private var lineLimit: Int = 3
    @State private var lineSpacing: CGFloat = 0.4
    @State private var paddingBottom: CGFloat = 3
    
    var podcastEpisode: PodcastEpisode

    var body: some View {
        VStack(alignment: .leading){
            dateEpisode().environment(\.locale, Locale(identifier: "fr"))
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .font(.system(size: fontDateSize, design: .rounded))
              
                
            Text(podcastEpisode.titre)
                .fontWeight(.bold)
                .font(.system(size: fontTitleSize, design: .rounded))
         
            Text(podcastEpisode.description)
                .lineLimit(lineLimit)
                .font(.system(size: fontTextSize, design: .rounded))
                .foregroundColor(.gray)
                .lineSpacing(lineSpacing)
                .padding(.bottom, paddingBottom)
            
            HStack{
                Image(systemName: "play.circle.fill").foregroundColor(Colors.primary)
                if podcastEpisode.heures != 0 {
                    Text("\(podcastEpisode.heures) h").foregroundColor(Colors.primary)
                }
                Text("\(podcastEpisode.minutes) min").foregroundColor(Colors.primary)
                Spacer()
                Image(systemName: "ellipsis").foregroundColor(.gray)
            }
        }.padding(.horizontal)
    }
    
    private func dateEpisode()->Text {
        /*let ecart: (Int, Int, Int, Int) = secondesEnJoursHeuresMinutesSecondes(secondes: podcastEpisode.date.distance(to: Date.now))
        
        if ecart.0 < 7 {
            if ecart.0 < 1 {
                if ecart.1 < 1 {
                    if ecart.2 < 1{
                        return Text("Il y a \(ecart.3) s".uppercased())
                    }
                    return Text("Il y a \(ecart.2) min".uppercased())
                }
                return Text("Il y a \(ecart.1) h".uppercased())
            }
            return Text("Il y a \(ecart.0) j".uppercased())
        }*/
        return Text(podcastEpisode.date, format: .dateTime.day().month())
    }
    
    func secondesEnJoursHeuresMinutesSecondes(secondes: Double) -> (Int, Int, Int, Int) {
      let (h,  minf) = modf(secondes / 3600)
      let (min, sec) = modf(60 * minf)
        return (Int(h / 24), Int(h), Int(min), Int(sec))
    }
}

struct EpisodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeDetailView(podcastEpisode: PodcastStub.getListPodcastEpisode()[3])
    }
}
