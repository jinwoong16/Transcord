//
//  RecordViewModel.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/19/23.
//

import Foundation
import PWRecordKit

final class RecordViewModel: ObservableObject {
    private let audioRecorder: AudioRecorder
    
    @Published var isRecording: Bool = false
    
    init(audioRecorder: AudioRecorder) {
        self.audioRecorder = audioRecorder
    }
    
    func startRecord() {
        Task {
            await MainActor.run {
                isRecording = true
            }
            do {
                let audioURL = getDocumentsDirectory().appending(path: "audio/\(DateFormatter.pwFormatter(from: Date())).m4a")
                try await audioRecorder.start(url: audioURL)
            } catch {
                print("‼️ error: \(error)")
            }
        }
    }
    
    func stopRecord() {
        Task {
            await MainActor.run {
                isRecording = false
            }
            await audioRecorder.stop()
        }
    }
    
    private func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths.first!
    }
}
