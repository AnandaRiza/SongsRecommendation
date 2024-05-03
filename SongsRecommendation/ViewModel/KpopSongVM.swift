//
//  KpopSong.swift
//  SongsRecommendation
//
//  Created by MACBOOK PRO on 03/05/24.
//

import Foundation
import GoogleGenerativeAI

@MainActor
class KpopSongVM: ObservableObject {
    private var geminiModel: GenerativeModel?
    @Published var song: [Song] = []
    @Published var isReady: Bool = false
    
    init() {
        // self.geminiModel = GenerativeModel(name: "gemini-pro", apiKey: Constant.apiKey)
        configureGenerativeModel()
        
    }
    
    func configureGenerativeModel() {
        Task {
            do {
                let apiKey: String = try await
                RemoteConfigService.shared.fetchConfig(forKey: .apiKey)
                self.geminiModel = GenerativeModel(name: "gemini-pro", apiKey: apiKey)
                self.isReady = true
            }catch{
                print("Error configuring GeneraticeModel: \(error)")
            }
        }
        
        
        
    }
    
    
    func getKpopSongs() async {
        let prompt = Constant.today_kpop_prompt
        
        guard let geminiModel = self.geminiModel else {
            print("Generatice Model is not configured")
            return
        }
        
        do{
            let response = try await geminiModel.generateContent(prompt)
            guard let text = response.text, let data = text.data(using: .utf8)
            else{
                
                print("🥸 Unable to extract text or convert to data")
                return
            }
            
            song = try JSONDecoder().decode([Song].self, from: data)
            
            
        }catch{
            
            print("🙅‍♀️ error fetching songs: \(error.localizedDescription) 🙅‍♀️ ")
        }
    }
}

