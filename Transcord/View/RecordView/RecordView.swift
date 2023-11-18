//
//  RecordView.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/18/23.
//

import SwiftUI

struct RecordView: View {
    @State private var isRecording = false
    
    var body: some View {
        VStack {
            Spacer()
            RecordStatusView(isRecording: $isRecording)
            Spacer()
            RecordButtonView(isRecording: $isRecording)
        }
    }
}

#Preview {
    RecordView()
}
