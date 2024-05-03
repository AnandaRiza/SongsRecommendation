//
//  ContentView.swift
//  PlacesAI
//
//  Created by MACBOOK PRO on 24/04/24.
//

import SwiftUI
import Firebase

struct AnimeSongsView: View {
    @StateObject var songVM = AnimeSongVM()
    @State private var isRedacted: Bool = true


    
    
    var body: some View {
      
        NavigationStack{
            List{
                ForEach(songVM.song, id:\.self){
                    item in SongRow(song: item)
                }
                
            }
            
            .overlay {
                songVM.song.isEmpty ? ProgressView() : nil
            }
//            .task {
//                await placeVM.getPlaces()
//            }
            
            .onChange(of: songVM.isReady) { oldValue, isReady in
                if isReady {
                    Task {
                        await songVM.getAnimeSongs()
                    }
                }
                
            }
            
        }
        
        .refreshable {
            await songVM.getAnimeSongs()
        }
        

    }
}

#Preview {
    AnimeSongsView()
}
