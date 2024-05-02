//
//  ContentView.swift
//  PlacesAI
//
//  Created by MACBOOK PRO on 24/04/24.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @StateObject var songVM = SongVM()
    @State private var isRedacted: Bool = true


    
    
    var body: some View {
        TabView {
            SongsView()
                .tabItem {
                    Label("Daylist", systemImage: "sun.max.fill")
                }
            
            RecommendationView()
                .tabItem {
                    Label("Song Generator", systemImage: "fireworks")
                }
        }
        .tint(.primary)
    }
}

#Preview {
    ContentView()
}
