//
//  ButtonIconView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import SwiftUI

struct ButtonIconView: View {
    @State private var size: CGFloat = 30
    @State private var radius: CGFloat = 20
    
    var imageName: String
    var themeColor: Bool

    var body: some View {
        Button(action: {}){
            Image(systemName: imageName)
                .foregroundColor(getIconColor())
                .fontWeight(.bold)
        }
        .frame(width: size, height: size, alignment: .center)
            .background(getButtonColor())
            .cornerRadius(radius)
    }
    
    func getButtonColor()->Color{
        if themeColor { return .gray }
        else { return .white }
    }
    
    func getIconColor()->Color{
        if themeColor { return .white }
        else { return Colors.primary }
    }
}

struct ButtonIconView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonIconView(imageName: "chevron.backward", themeColor: true)
    }
}
