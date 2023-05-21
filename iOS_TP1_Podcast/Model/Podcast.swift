//
//  Podcast.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import Foundation
import SwiftUI

public struct Podcast : Hashable{
    let id: Int
    let titre: String
    let auteur: String
    let description: String
    let note: Float
    let nbVote: Int
    let genre: String
    let rythme: String?
    let episodes: [PodcastEpisode]

    let imageName: String
    var image: Image {
        Image(imageName)
    }
    
    
    public init(id: Int, titre: String, auteur: String, description: String, note: Float, nbVote: Int, genre: String, rythme: String?, imageName: String, episodes: [PodcastEpisode]) {
        self.id = id
        self.titre = titre
        self.auteur = auteur
        self.description = description
        self.note = note
        self.nbVote = nbVote
        self.genre = genre
        self.rythme = rythme
        self.imageName = imageName
        self.episodes = episodes
    }
    
    public static func == (lhs: Podcast, rhs: Podcast) -> Bool {
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    

}
