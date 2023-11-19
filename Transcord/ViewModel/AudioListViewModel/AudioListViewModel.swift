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
    
    init() {
        #if DEBUG
            print(getDocumentsDirectory())
        #endif
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths.first!
    }

    func loadFiles() {
        let documentURL = getDocumentsDirectory()
        
        do {
            let directoryContents = try FileManager.default.contentsOfDirectory(
                at: documentURL,
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