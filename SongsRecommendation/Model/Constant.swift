//
//  Constant.swift
//  SongsRecommendation
//
//  Created by MACBOOK PRO on 02/05/24.
//

import Foundation

struct Constant {
    
    static let today_metal_prompt = """
    could you suggest me songs from todays metal genre top global chart, use json as the output and also generate the artist album and brief description
    [
       {
                   "artist": "Lorna Shore",
                      "album": "Pain Remains",
                      "song": "Sun//Eater",
                      "description": "A brutal and epic deathcore song with blast beats, heavy breakdowns, and gutturals.",
                      "genre": "Symphonic Deathcore"
           }
    ]
    
    only. Remove any backticks
    
    """
    
    static let today_anime_prompt = """
    could you suggest me songs from todays anime genre top global chart, use json as the output and also generate the artist album and brief description
    [
       {
                 "artist": " 高橋洋子",
                    "album": "Neon Genesis Evangelion Original Soundtrack",
                     "song": "残酷な天使のテーゼ (Cruel Angel's Thesis)",
                     "description": "The legendary opening theme from Neon Genesis Evangelion, instantly recognizable and synonymous with the anime.",
                     "genre": "J-Pop, Rock"
    
           }
    ]
    
    only. Remove any backticks
    
    """
    
    static let today_rap_prompt = """
    could you suggest me songs from todays rap genre top global chart, use json as the output and also generate the artist album and brief description
    [
       {
                 "artist": "Kendrick Lamar",
                    "album": "To Pimp a Butterfly",
                    "song": "Alright",
                    "description": "A powerful anthem about resilience and hope in the face of adversity, with socially conscious lyrics and a catchy hook.",
                    "genre": "Conscious Rap, Hip-Hop"
    
           }
    ]
    
    only. Remove any backticks
    
    """
    
    
    static let today_kpop_prompt = """
    could you suggest me songs from todays korean ballad genre top global chart, use json as the output and also generate the artist album and brief description
    [
       {
               "artist": "IU",
                   "album": "Palette",
                   "song": "Through the Night",
                   "description": "A heartfelt ballad with gentle piano melodies and IU's soothing vocals, expressing themes of comfort and healing.",
                   "genre": "Korean Ballad"
           }
    ]
    
    only. Remove any backticks
    
    """
    
}
