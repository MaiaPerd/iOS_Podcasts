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
    var action: () -> Void
    var padding: CGFloat

    var body: some View {
        Button(action: action){
            Image(systemName: imageName)
                .foregroundColor(getIconColor())
                .fontWeight(.bold)
                .padding(.trailing, padding)
        }
        .frame(width: size, height: size, alignment: .center)
        .background(getButtonColor().opacity(0.6))
            .cornerRadius(radius)
    }
    
    func getButtonColor()->Color{
        if themeColor { return Colors.grey }
        else { return Colors.secondaryBackground }
    }
    
    func getIconColor()->Color{
        if themeColor { return Colors.secondaryBackground }
        else { return Colors.primary }
    }
}

struct ButtonIconView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonIconView(imageName: "chevron.backward", themeColor: true, action: {}, padding: 0)
    }
}
