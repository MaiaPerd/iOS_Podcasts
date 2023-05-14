//
//  TopNavBarView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import SwiftUI

struct TopNavBarView: View {

    
    var body: some View {
        HStack{
            ButtonIconView(imageName: "chevron.backward", themeColor: true)
            Spacer()
            ButtonIconView(imageName: "checkmark", themeColor: true).padding(.horizontal,10)
            ButtonIconView(imageName: "ellipsis", themeColor: true)
            
        }.padding(.horizontal)
    }
}

struct TopNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavBarView()
    }
}
