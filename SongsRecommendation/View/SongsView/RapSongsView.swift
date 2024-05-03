//
//  RapSongsView.swift
//  SongsRecommendation
//
//  Created by MACBOOK PRO on 03/05/24.
//

import SwiftUI
import Firebase

struct RapSongsView: View {
    @StateObject var songVM = RapSongVM()
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
                        await songVM.getRapSongs()
                    }
                }
                
            }
            
        }
        
        .refreshable {
            await songVM.getRapSongs()
        }
        

    }
}

#Preview {
    RapSongsView()
}

