//
//  RecommendationView.swift
//  SongsRecommendation
//
//  Created by MACBOOK PRO on 02/05/24.
//

import SwiftUI
import Firebase

struct MetalSongsView: View {
    @StateObject var songVM = MetalSongVM()
    @State private var isRedacted: Bool = true


    
    
    var body: some View {
      
        NavigationStack{
            List{
                ForEach(songVM.song, id:\.self){
                    item in SongRow(song: item)
                }
                
            }
            
            .overlay {
                songVM.song.isEmpty ? ProgressView().tint(.green) : nil
            }
//            .task {
//                await placeVM.getPlaces()
//            }
            
            .onChange(of: songVM.isReady) { oldValue, isReady in
                if isReady {
                    Task {
                        await songVM.getMetalSongs()
                    }
                }
                
            }
            
        }
        
        .refreshable {
            await songVM.getMetalSongs()
        }
        

    }
}

#Preview {
     MetalSongsView()
        .preferredColorScheme(.dark)
}
