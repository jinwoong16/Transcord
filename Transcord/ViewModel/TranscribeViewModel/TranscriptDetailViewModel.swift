//
//  TranscriptDetailViewModel.swift
//  Transcord
//
//  Created by jinwoong Kim on 12/7/23.
//

import Foundation

final class TranscriptDetailViewModel: ObservableObject {
    @Published var audioLog: String = ""
    
    init(transcript: Transcript) {
        audioLog = parse(with: transcript.url)
    }
    
    private func parse(with url: URL) -> String {
        do {
            return try String(contentsOf: url, encoding: .utf8)
        } catch {
            return "EMPTY"
        }
    }
}
