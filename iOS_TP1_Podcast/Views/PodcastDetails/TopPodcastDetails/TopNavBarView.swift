//
//  TopNavBarView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import SwiftUI

struct TopNavBarView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var size: CGFloat = 30
    @State private var radius: CGFloat = 20
    
    var themeColor = true
    
    func getButtonColor()->Color{
        if themeColor { return .gray }
        else { return .white }
    }
    
    func getIconColor()->Color{
        if themeColor { return .white }
        else { return Colors.primary }
    }
    var body: some View {
        HStack{
            Button(action: {dismiss()}){
                Image(systemName: "chevron.backward")
                    .foregroundColor(getIconColor())
                    .fontWeight(.bold)
            }
            .frame(width: size, height: size, alignment: .center)
                .background(getButtonColor())
                .cornerRadius(radius)
            //ButtonIconView(imageName: "chevron.backward", themeColor: true)
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
