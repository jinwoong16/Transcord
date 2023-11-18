//
//  RecordStatusView.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/18/23.
//

import SwiftUI

struct RecordStatusView: View {
    @Binding var isRecording: Bool
    
    var body: some View {
        if isRecording {
            Image(systemName: "waveform")
                .resizable()
                .foregroundStyle(.red)
                .frame(width: 100, height: 100)
                .symbolEffect(.variableColor.iterative.dimInactiveLayers.nonReversing)
        } else {
            Image(systemName: "waveform")
                .resizable()
                .foregroundStyle(.gray)
                .frame(width: 100, height: 100)
        }
    }
}


#Preview {
    RecordStatusView(isRecording: .constant(false))
}
