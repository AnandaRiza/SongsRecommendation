//
//  Constant.swift
//  SongsRecommendation
//
//  Created by MACBOOK PRO on 02/05/24.
//

import Foundation

struct Constant {
        
    static let today_prompt = """
    could you recommend me songs  from todays  global chart, use json as the output and also generate the artist album and brief description
    [
       {
                  "artist": "Kendrick Lamar",
                  "album": "Mr. Morale & the Big Steppers",
                  "song": "euphoria.",
                  "description": "A introspective and thought-provoking hip-hop track with introspective lyrics and a laid-back beat.",
                  "genre": "Hip-Hop"
    
           }
    ]
    
    only. Remove any backticks

    """
    
    
}
