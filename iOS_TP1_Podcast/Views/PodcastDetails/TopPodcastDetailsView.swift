//
//  TopPodcastDetailsView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 14/05/2023.
//

import SwiftUI

struct TopPodcastDetailsView: View {
    @State private var backgroundColor: Color = .clear
    @State private var labelButton = "Dernier épisode"
    @State private var backgroundPadding: CGFloat = -400
    @State private var backgroundLinearPadding: CGFloat = -100
    @State private var backgroundLinearOpacity: CGFloat = 0.2
    @State private var paddingLabelVertical: CGFloat = 0
    @State private var paddingLabelHorizontal: CGFloat = 25
    @State private var paddingJacquetView: CGFloat = 45
    @State private var paddingButton: CGFloat = 10
    @State private var widthButton: CGFloat = 280
    @State private var heigthButton: CGFloat = 50
    @State private var opacityButton: CGFloat = 0.9
    @State private var cornerRadius: CGFloat = 15
    @State private var padding: CGFloat = 18
    
    var podcats: Podcast

    init(podcats: Podcast) {
       self.podcats = podcats
       setAverageColor()
    }
   
    var body: some View {
            VStack{
                ZStack{
                 //  podcats.image.resizable().frame(maxWidth: .infinity).blur(radius: 100, opaque: true).padding(.top,-400)
                    Rectangle().padding(.top, backgroundPadding)
                          .foregroundColor(backgroundColor)
                          .onAppear {
                              self.setAverageColor()
                          }
                   
                    LinearGradient(colors: [.black, .secondary, .black],
                                   startPoint: .topTrailing,
                                   endPoint: .bottomTrailing)
                        .opacity(backgroundLinearOpacity)
                        .padding(.top, backgroundLinearPadding)
                    
                    VStack{
                        JacquetView(image: podcats.image, titre: podcats.titre, auteur: podcats.auteur)
                            .padding(.top, paddingJacquetView)
                        
                        Button(action: {}) {
                            Label(labelButton, systemImage: "play.fill")
                                .padding(.vertical, paddingLabelVertical).padding(.horizontal, paddingLabelHorizontal).fontWeight(.bold)
                        }.foregroundColor(buttonTextColor)
                            .frame(width: widthButton,height: heigthButton)
                            .background(accessibleFontColor)
                            .opacity(opacityButton)
                            .cornerRadius(cornerRadius)
                            .padding(.vertical, paddingButton)
                        
                        DescriptionView(description: podcats.description, note: podcats.note, nbVote: podcats.nbVote, genre: podcats.genre)
                        
                    }.padding(padding)
                    .foregroundColor(accessibleFontColor)
                }
            }
        
    }
    
    private func setAverageColor() {
        let uiColor = UIImage(named: podcats.imageName)?.dominantColor ?? .clear
          backgroundColor = Color(uiColor)
    }
    
    var accessibleFontColor: Color {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        UIColor(backgroundColor).getRed(&red, green: &green, blue: &blue, alpha: nil)
        return isLightColor(red: red, green: green, blue: blue) ? .black : .white
    }
    
    var buttonTextColor: Color {
        return (accessibleFontColor == .white) ? .black : .white
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
