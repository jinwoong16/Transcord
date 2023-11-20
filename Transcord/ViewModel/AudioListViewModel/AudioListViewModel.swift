//
//  AudioListViewModel.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/19/23.
//

import Foundation
import Combine

final class AudioListViewModel: ObservableObject {
    @Published var audios: [Audio] = []
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths.first!
    }

    func loadFiles() {
        let documentURL = getDocumentsDirectory()
        let audioListURL = documentURL.appending(path: "audio")
        
        do {
            let directoryContents = try FileManager.default.contentsOfDirectory(
                at: audioListURL,
                includingPropertiesForKeys: nil
            )
            
            audios = directoryContents
                .map { url in
                    Audio(id: UUID(), title: url.lastPathComponent, url: url)
                }
        } catch {
            print("‼️ error: \(error)")
        }
    }
}
