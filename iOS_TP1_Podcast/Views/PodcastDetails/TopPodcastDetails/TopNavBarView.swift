//
//  TopNavBarView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import SwiftUI

struct TopNavBarView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var paddingHorizontal: CGFloat = 6
    @State private var paddingVertical: CGFloat = 5
    @State private var padding: CGFloat = 0
    @State private var themeColor = true

    var body: some View {
        HStack{
            ButtonIconView(imageName: "chevron.backward", themeColor: themeColor, action: {dismiss()}, padding: padding)
            Spacer()
            ButtonIconView(imageName: "arrow.down", themeColor: themeColor, action: {}, padding: padding).padding(.horizontal, paddingHorizontal)
            ButtonIconView(imageName: "ellipsis", themeColor: themeColor, action: {}, padding: padding)
            
        }.padding(.horizontal)
            .padding(.vertical, paddingVertical)
    }
}

struct TopNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavBarView()
    }
}
