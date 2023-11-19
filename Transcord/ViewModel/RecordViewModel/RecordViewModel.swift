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
        }
    }
    
    func stopRecord() {
        Task {
            await MainActor.run {
                isRecording = false
            }
        }
    }
}
