//
//  DividerView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 15/05/2023.
//

import SwiftUI

struct DividerView: View {
    @State private var padding: CGFloat = 0
    @State private var leadingPadding: CGFloat = 0.6
    
    var body: some View {
        Divider().padding(.leading, leadingPadding).padding(padding)
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}
