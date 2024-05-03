//
//  SongRow.swift
//
//
//  Created by MACBOOK PRO on 24/04/24.
//

import SwiftUI

struct SongRow: View {
    var song: Song
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(systemName: "music.note.list")
                Text(song.song)
                    .font(.system(.title, design: .rounded))
                
            }
            
            HStack {
//                Image(systemName: "square.stack.fill")
                Text(song.album)
                    .font(.headline)
                    .padding()
            }
            
    
    
            
            
            Text(song.description)
                .font(.subheadline)
                .padding()
           
                
            
            HStack{
                Group {
                    Image(systemName: "person.fill")
                    Text(song.artist)
                }
                .font(.subheadline)
                
                Spacer()
                
                HStack{
                    Image(systemName: "book.pages.fill")
                    
                    
                    
                    Text(song.genre)
                        .font(.subheadline)
                    
                }
                
                .padding([.vertical, .horizontal], 8)
            }
            
            
        }

    }
}

#Preview {
    SongRow(song: Song.dummyData[0])
    
}
