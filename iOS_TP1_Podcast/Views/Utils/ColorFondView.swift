//
//  ColorFondView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 15/05/2023.
//

import SwiftUI

struct ColorFondView: View {
    @State private var backgroundColor: Color = .clear

       var images = "NadieSabeNada"
       var body: some View {
          GeometryReader { geometry in
              Image(images)
           }
          
}

struct ColorFondView_Previews: PreviewProvider {
    static var previews: some View {
        ColorFondView()
    }
}
