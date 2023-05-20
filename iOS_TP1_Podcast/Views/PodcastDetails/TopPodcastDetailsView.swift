//
//  TopPodcastDetailsView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct TopPodcastDetailsView: View {
    @State private var backgroundColor: Color = .clear
    
    var podcats: Podcast
    
    var body: some View {
     
            VStack{
                ZStack{
                 //  podcats.image.resizable().frame(maxWidth: .infinity).blur(radius: 100, opaque: true).padding(.top,-400)
                    Rectangle().padding(.top,-400)
                          .foregroundColor(backgroundColor)
                          .onAppear {
                              self.setAverageColor()
                          }
                   
                    LinearGradient(colors: [.black, .secondary, .black],
                                   startPoint: .topTrailing,
                                   endPoint: .bottomTrailing).opacity(0.2)
                        .padding(.top,-100)
                    VStack{
                        JacquetView(image: podcats.image, titre: podcats.titre, auteur: podcats.auteur)
                            .padding(.top,45).padding(.bottom,10)
                        
                        
                        DescriptionView(description: podcats.description, note: podcats.note, nbVote: podcats.nbVote, genre: podcats.genre)
                        
                    }.padding(15)
                    .foregroundColor(accessibleFontColor)
                    
               
                         
                }
            }
           
        
        
    }
    
    private func setAverageColor() {
        let uiColor = UIImage(named: podcats.imageName)?.dominantColor ?? .clear
          backgroundColor = Color(uiColor)
      }
    
    var accessibleFontColor: Color {
        setAverageColor()
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        UIColor(backgroundColor).getRed(&red, green: &green, blue: &blue, alpha: nil)
        return isLightColor(red: red, green: green, blue: blue) ? .black : .white
    }
    private func isLightColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> Bool {
        let lightRed = red > 0.65
        let lightGreen = green > 0.65
        let lightBlue = blue > 0.65
        let lightness = [lightRed, lightGreen, lightBlue].reduce(0) { $1 ? $0 + 1 : $0 }
        return lightness >= 2
    }
}

struct TopPodcastDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TopPodcastDetailsView(podcats: PodcastStub.getPodcast())
    }
}
