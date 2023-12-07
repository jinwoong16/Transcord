//
//  RecordButtonView.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/18/23.
//

import SwiftUI

struct RecordButtonView: View {
    @EnvironmentObject var recordViewModel: RecordViewModel
    
    var body: some View {
        Button {
            recordViewModel.isRecording
            ? recordViewModel.stopRecord()
            : recordViewModel.startRecord()
        } label: {
            Image(systemName: recordViewModel.isRecording ? "stop.circle" : "circle.fill")
                .font(.system(size: 72))
                .symbolRenderingMode(.palette)
                .contentTransition(.symbolEffect(.replace))
                .foregroundStyle(
                    recordViewModel.isLoading
                    ? .red.opacity(0.5)
                    : .red,
                    .white
                )
                .overlay {
                    recordViewModel.isLoading
                    ? Circle().stroke(.gray.opacity(0.5), lineWidth: 4) : Circle().stroke(.gray, lineWidth: 4)
                }
        }
        .disabled(recordViewModel.isLoading)
    }
}

#Preview {
    RecordButtonView()
        .environmentObject(recordViewModelMock)
}
