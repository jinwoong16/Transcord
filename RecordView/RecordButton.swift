//
//  RecordView.swift
//  Viewer
//
//  Created by 금보성 on 11/9/23.
//

import SwiftUI

struct RecordButtonView: View {
    
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
              Image(systemName: audioRecorderManager.isRecording ? "stop.circle" : "record.circle")
                  .font(.system(size: 100))
                  .symbolRenderingMode(.palette)
                  .contentTransition(.symbolEffect(.replace))
                  .foregroundStyle(.red, .black)
                  .onTapGesture {
                      audioRecorderManager.isRecording.toggle()
                  }
              }
      }
    

}

#Preview {
    RecordButtonView(audioRecorderManager: AudioRecorderManager())
        .previewLayout(.sizeThatFits)
}
