//
//  RecordMainView.swift
//  Viewer
//
//  Created by 금보성 on 11/9/23.
//

import SwiftUI

struct RecordMainView: View {
    @StateObject var audioRecorderManager = AudioRecorderManager()
    
    var body: some View {
        VStack {
            Spacer()
            /// 타이틀 뷰
            /// 현재 메모 진행중 상태 뷰
            RecordStatusView(audioRecorderManager: audioRecorderManager)
            Spacer()
            /// 음성메모 버튼 뷰
            RecordButtonView(audioRecorderManager: audioRecorderManager)
            /// 메모 리스트 뷰
        }
        .padding()
    }
}

#Preview {
    RecordMainView(audioRecorderManager: AudioRecorderManager())
}
