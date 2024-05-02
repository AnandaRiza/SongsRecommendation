//
//  SongsRecommendationApp.swift
//  SongsRecommendation
//
//  Created by MACBOOK PRO on 02/05/24.
//

import SwiftUI
import Firebase

@main
struct SongsRecommendationApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
