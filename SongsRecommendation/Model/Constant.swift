//
//  Constant.swift
//  SongsRecommendation
//
//  Created by MACBOOK PRO on 02/05/24.
//

import Foundation

struct Constant {
        
    static let today_prompt = """
    could you recommend me songs  from todays global chart, use json as the output and also generate the artist album and brief description
    [
       {
               "artist": "Olivia Rodrigo",
               "album": "SOUR",
               "song": "good 4 u",
               "description": "An energetic pop-rock anthem with raw lyrics and infectious melodies, showcasing Olivia Rodrigo's versatile vocal range."
           }
    ]
    
    only. Remove any backticks

    """
    
    
}
