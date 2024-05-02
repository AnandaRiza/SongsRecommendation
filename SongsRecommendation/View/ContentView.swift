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

    
    
    var body: some View {
      
        NavigationStack{
            List{
                ForEach(songVM.song, id:\.self){
                    item in SongRow(song: item)
                }
                
            }
            
            .navigationTitle("Your Songs of the Day")
            .overlay {
                songVM.song.isEmpty ? ProgressView() : nil
            }
//            .task {
//                await placeVM.getPlaces()
//            }
            
            .onChange(of: songVM.isReady) { oldValue, isReady in
                if isReady {
                    Task {
                        await songVM.getSongs()
                    }
                }
                
            }
            
        }

    }
}

#Preview {
    ContentView()
}
