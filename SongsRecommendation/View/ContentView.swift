//
//  ContentView.swift
//  PlacesAI
//
//  Created by MACBOOK PRO on 24/04/24.
//

import SwiftUI
import Firebase

struct ContentView: View {
   @State private var selectedTag = 0
    
    var body: some View {
        NavigationStack {
            VStack{
                Picker("", selection: $selectedTag){
                    Text("Metal")
                        .tag(0)
                    Text("Anime")
                        .tag(1)
                    Text("Rap")
                        .tag(2)
                    Text("K - Pop")
                        .tag(3)
                }
                .pickerStyle(SegmentedPickerStyle())
                
                switch selectedTag {
                case 0:
                    MetalSongsView()
                case 1:
                    AnimeSongsView()
                case 2:
                    RapSongsView()
                case 3:
                    KpopSongsView()
                    
                default:
                    Text("Segment")
                }
                Spacer()
            }
            .navigationTitle("Daylist")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    ContentView()
}
