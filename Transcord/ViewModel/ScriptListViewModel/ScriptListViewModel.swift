//
//  ScriptListViewModel.swift
//  Transcord
//
//  Created by 금보성 on 12/7/23.
//

import Foundation
import Combine

final class ScriptListViewModel: ObservableObject {
    @Published var scripts: [Script] = []
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths.first!
    }

    func loadFiles() {
        let documentURL = getDocumentsDirectory()
        let scriptListURL = documentURL.appending(path: "script")
        
        do {
            let directoryContents = try FileManager.default.contentsOfDirectory(
                at: scriptListURL,
                includingPropertiesForKeys: nil
            )
            
            scripts = directoryContents
                .map { url in
                    Script(id: UUID(), title: url.lastPathComponent, url: url)
                }
        } catch {
            print("‼️ error: \(error)")
        }
    }
}
