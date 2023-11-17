//
//  AudioButton.swift
//  Viewer
//
//  Created by 금보성 on 11/14/23.
//

import SwiftUI

struct AudioButton: View {
    
    @State private var isOn: Bool = false
    @ObservedObject private var audioRecorderManager: AudioRecorderManager

      init(audioRecorderManager: AudioRecorderManager) {
        self.audioRecorderManager = audioRecorderManager
      }
    
    var body: some View {
        Button(
          action: {
            audioRecorderManager.isRecording
            ? audioRecorderManager.stopRecording()
            : audioRecorderManager.startRecording()
//                isOn.toggle()
          }
        ) {
            Image(systemName: audioRecorderManager.isRecording ? "pause.fill" : "play.fill")
                .font(.system(size: 25))
                .symbolRenderingMode(.palette)
                .contentTransition(.symbolEffect(.replace))
                .foregroundStyle(.black)
                .onTapGesture {
                    audioRecorderManager.isRecording.toggle()
                }
            }
    }
}

#Preview {
    AudioButton(audioRecorderManager: AudioRecorderManager())
}
