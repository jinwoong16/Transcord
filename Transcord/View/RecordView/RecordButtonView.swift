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
            Image(systemName: recordViewModel.isRecording ? "stop.circle" : "record.circle")
                .font(.system(size: 72))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.red, .black)
        }
    }
}

#Preview {
    RecordButtonView()
        .environmentObject(recordViewModelMock)
}
