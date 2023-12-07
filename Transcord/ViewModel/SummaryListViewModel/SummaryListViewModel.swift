//
//  SummaryListViewModel.swift
//  Transcord
//
//  Created by 금보성 on 12/7/23.
//

import Foundation
import Combine

final class SummaryListViewModel: ObservableObject {
    @Published var summarys: [Summary] = []
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths.first!
    }

    func loadFiles() {
        let documentURL = getDocumentsDirectory()
        let summaryListURL = documentURL.appending(path: "summary")
        
        do {
            let directoryContents = try FileManager.default.contentsOfDirectory(
                at: summaryListURL,
                includingPropertiesForKeys: nil
            )
            
            summarys = directoryContents
                .map { url in
                    Summary(id: UUID(), title: url.lastPathComponent, url: url)
                }
        } catch {
            print("‼️ error: \(error)")
        }
    }
}
