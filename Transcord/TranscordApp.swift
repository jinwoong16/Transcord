//
//  TranscordApp.swift
//  Transcord
//
//  Created by jinwoong Kim on 2023/10/05.
//

import SwiftUI
import PWRecordKit

@main
struct TranscordApp: App {
    private let recordViewModel = RecordViewModel(audioRecorder: DefaultAudioRecorder())
    private let audioListViewModel = AudioListViewModel()
    private let transcriptListViewModel = TranscriptListViewModel()
    
    init() {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let audioListPath = paths.appending(path: "audio")
        let transcriptListPath = paths.appending(path: "transcript")
        
        if !FileManager.default.fileExists(atPath: audioListPath.path()) {
            do {
                try FileManager.default.createDirectory(atPath: audioListPath.path(), withIntermediateDirectories: true)
            } catch {
                print("‼️ error: \(error)")
            }
        }
        
        if !FileManager.default.fileExists(atPath: transcriptListPath.path()) {
            do {
                try FileManager.default.createDirectory(atPath: transcriptListPath.path(), withIntermediateDirectories: true)
            } catch {
                print("‼️ error: \(error)")
            }
        }
        
        #if DEBUG
        print("⚒️ base path: ", paths)
        print("🎧 audio path: ", audioListPath)
        print("📝 transcript path: ", transcriptListPath)
        #endif
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recordViewModel)
                .environmentObject(audioListViewModel)
                .environmentObject(transcriptListViewModel)
        }
    }
}
