//
//  RecordStatusView.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/18/23.
//

import SwiftUI

struct RecordStatusView: View {
    var isRecording: Bool
    var isLoading: Bool
    
    var body: some View {
        if isRecording && !isLoading  {
            Image(systemName: "waveform",variableValue: 0.0)
                .resizable()
                .foregroundStyle(.red)
                .frame(width: 100, height: 100)
                .symbolEffect(.variableColor.iterative.dimInactiveLayers.nonReversing)
                .transition(.opacity.animation(.easeInOut))
        } else if !isRecording && isLoading {
            Image(systemName: "aqi.medium",variableValue: 0.0)
                .resizable()
                .foregroundStyle(.gray)
                .frame(width: 100, height: 100)
                .symbolEffect(.variableColor.iterative.dimInactiveLayers.nonReversing)
                .transition(.opacity.animation(.easeInOut))
        } else if !isRecording && !isLoading {
            Image(systemName: "waveform")
                .resizable()
                .foregroundColor(Color("WhiteGray"))
                .frame(width: 100, height: 100)
                .transition(.opacity.animation(.easeInOut))
        }
    }
}


#Preview {
    RecordStatusView(isRecording: false, isLoading: false)
}
