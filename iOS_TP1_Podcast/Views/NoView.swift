//
//  NoView.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import SwiftUI

struct NoView: View {
    var title: String
    var body: some View {
        VStack{
            Text("La page :")
            Text(title)
            Text("n'existe pas !")
        }
     
        
    }
}

struct NoView_Previews: PreviewProvider {
    static var previews: some View {
        NoView(title: "")
    }
}
