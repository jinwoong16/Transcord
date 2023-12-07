//
//  TranscriptListViewModel.swift
//  Transcord
//
//  Created by jinwoong Kim on 12/7/23.
//

import Foundation

struct Transcript: Identifiable {
    let id: UUID
    let title: String
    let url: URL
}

final class TranscriptListViewModel: ObservableObject {
    @Published var transcripts: [Transcript] = []
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths.first!
    }
    
    func loadFiles() {
        let documentURL = getDocumentsDirectory()
        let transcriptsListURL = documentURL.appending(path: "transcript")
        
        do {
            let directoryContents = try FileManager.default.contentsOfDirectory(
                at: transcriptsListURL,
                includingPropertiesForKeys: nil
            )
            
            transcripts = directoryContents
                .map { url in
                    Transcript(id: UUID(), title: url.lastPathComponent, url: url)
                }
        } catch {
            print("‼️ error: \(error)")
        }
    }
}
