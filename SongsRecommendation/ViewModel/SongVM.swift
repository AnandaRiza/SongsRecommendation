//
//  PlaceVM.swift
//  PlacesAI
//
//  Created by MACBOOK PRO on 24/04/24.
//

import Foundation
import GoogleGenerativeAI

@MainActor
class SongVM: ObservableObject {
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
    
//    func generateStory(topic: Topics, mood: Mood) async {
//        isLoading = true
//        defer { isLoading = false }
//        errorMessage = nil
//        storyText = ""
//        
//        let apiKey = UserDefaults.standard.string(forKey: "GeminiAIKey") ?? ""
//        
//        guard !apiKey.isEmpty else {
//            errorMessage = "API Key is missing. Please set it in Settings page!"
//            return
//        }
//        
//        let model = GenerativeModel(name: "gemini-pro", apiKey: apiKey)
//        let topicString = topic.rawValue
//        let moodString = mood.rawValue
//        print("\(topicString) - \(moodString)")
//        
//        let prompt = "Write me a quote about \(topicString) with a \(moodString) mood settings. max 40 words, in english based on greek philosophers"
//        
//        do {
//            let response = try await model.generateContent(prompt)
//            if let text = response.text {
//                storyText = text
//                startTypewriterEffect()
//            }
//        } catch {
//            errorMessage = "Failed to generate story: \(error.localizedDescription)"
//        }
//    }
    
    func getSongs() async {
        let prompt = Constant.today_prompt
        
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
