//
//  Songs.swift
//  SongsRecommendation
//
//  Created by MACBOOK PRO on 02/05/24.
//

import Foundation

struct Song: Codable, Hashable{
    let artist, album, song, description, genre: String
}


extension Song {
    
    static let dummyData: [Song] =
    [
    Song(artist: "Hindia", album: "Lagipula Hidup Akan Berakhir", song: "Cincin", description: "asdasdadas", genre: "Rock")
    ]
    
}
