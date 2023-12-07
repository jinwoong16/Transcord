//
//  RecordViewModel.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/19/23.
//

import Foundation
import PWRecordKit
import PWTranscribingKit

final class RecordViewModel: ObservableObject {
    private let audioRecorder: AudioRecorder
    private let transcriber: Transcriber
    private var filename: String = ""
    
    @Published var isRecording: Bool = false
    @Published var isProcessing: Bool = false
    
    init(audioRecorder: AudioRecorder, transcriber: Transcriber) {
        self.audioRecorder = audioRecorder
        self.transcriber = transcriber
    }
    
    func startRecord() {
        Task {
            await MainActor.run {
                isRecording = true
            }
            do {
                filename = DateFormatter.pwFormatter(from: Date())
                let audioURL = getDocumentsDirectory().appending(path: "audio/\(filename).m4a")
                try await audioRecorder.start(url: audioURL)
            } catch {
                print("‼️ error: \(error)")
            }
        }
    }
    
    func stopRecord() {
        Task {
            await audioRecorder.stop()
            await MainActor.run {
                isRecording = false
            }
            await startTranscribe(with: filename)
        }
    }
    
    func startTranscribe(with filename: String) async {
        await MainActor.run {
            isProcessing = true
        }
        
        let audioURL = getDocumentsDirectory().appending(path: "audio/\(filename).m4a")
        let result = await transcriber.transcribe(with: audioURL)
        let transcriptURL = getDocumentsDirectory().appending(path: "transcript/\(filename).txt")
        
        switch result {
            case let .success(log):
                do {
                    try log.write(to: transcriptURL, atomically: false, encoding: .utf8)
                } catch {
                    print("🧾 file write error: ", error)
                }
            case let .failure(error):
                print("‼️ \(#function) error: ", error)
        }
        
        await MainActor.run {
            isProcessing = false
        }
    }
    
    private func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths.first!
    }
}
