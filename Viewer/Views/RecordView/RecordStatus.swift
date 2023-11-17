//
//  RecordingView.swift
//  Viewer
//
//  Created by 금보성 on 11/9/23.
//

import SwiftUI

struct RecordStatusView: View {
    @ObservedObject private var audioRecorderManager: AudioRecorderManager
    
    init(audioRecorderManager: AudioRecorderManager) {
        self.audioRecorderManager = audioRecorderManager
    }
    
    var body: some View {
        if audioRecorderManager.isRecording {
            Image(systemName: "waveform").resizable()
                .foregroundStyle(.red)
                .frame(width: 100, height: 100)
                .symbolEffect(.variableColor.iterative.dimInactiveLayers.nonReversing, options: .speed(0.5))
                .transition(.opacity.animation(.bouncy))
        } else {
            Text("녹음 가능")
                .font(.system(size: 25))
                .transition(.opacity.animation(.bouncy))
        }
    }
}

#Preview {
    RecordStatusView(audioRecorderManager: AudioRecorderManager())
}
