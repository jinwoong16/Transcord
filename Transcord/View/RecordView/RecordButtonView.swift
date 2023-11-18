//
//  RecordButtonView.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/18/23.
//

import SwiftUI

struct RecordButtonView: View {
    @Binding var isRecording: Bool
    
    var body: some View {
        Button {
            isRecording.toggle()
        } label: {
            Image(systemName: isRecording ? "stop.circle" : "record.circle")
                .font(.system(size: 72))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.red, .black)
        }
    }
}

#Preview {
    RecordButtonView(isRecording: .constant(false))
}
