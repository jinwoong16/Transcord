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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recordViewModel)
        }
    }
}
