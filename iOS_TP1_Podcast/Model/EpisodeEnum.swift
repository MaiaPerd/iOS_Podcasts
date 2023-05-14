//
//  EpisodeEnum.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import Foundation
import SwiftUI

public enum EpisodeEnum: String, CaseIterable, Identifiable {
    case allEpisode = "Épisodes"
    case noRead = "Non lus"
    case download = "Téléchargés"
    public var id: Self { self }
}

