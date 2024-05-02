//
//  PlaceRow.swift
//  PlacesAI
//
//  Created by MACBOOK PRO on 24/04/24.
//

import SwiftUI

struct SongRow: View {
    var song: Song
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            
            
            
            
            HStack {
                Image(systemName: "music.note.list")
                Text(song.song)
                    .font(.system(.title, design: .rounded))
                
                
                
            }
    
            
            Text(song.description)
                .font(.caption)
                .padding()
           
                
            
            HStack{
                Group {
                    Image(systemName: "person.fill")
                    Text(song.artist)
                }
                .font(.subheadline)
                
                Spacer()
                
                HStack{
                    Image(systemName: "folder.fill")
                    
                    
                    
                    Text(song.album)
                        .font(.subheadline)
                    
                }
                
                .padding([.vertical, .horizontal], 8)
                .background(Color(.systemGroupedBackground))
                .clipShape(Capsule())
            }
            
            
        }

    }
}

#Preview {
    SongRow(song: Song.dummyData[0])
    
}
