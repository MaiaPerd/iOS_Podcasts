//
//  PodcastEpisode.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import Foundation
import SwiftUI

public struct PodcastEpisode {
    let id: Int
    let titre: String
    let date: Date
    let description: String
    let heures: Int
    let minutes: Int

    
    public init(id: Int, titre: String, date: Date, description: String, heures: Int, minutes: Int) {
        self.id = id
        self.titre = titre
        self.date = date
        self.description = description
        self.heures = heures
        self.minutes = minutes
    }

}
