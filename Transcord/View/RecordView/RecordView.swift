//
//  RecordView.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/18/23.
//

import SwiftUI

struct RecordView: View {
    @EnvironmentObject var viewModel: RecordViewModel
    
    var body: some View {
        VStack {
            Spacer()
            RecordStatusView(isRecording: $viewModel.isRecording)
            Spacer()
            RecordButtonView(isRecording: $viewModel.isRecording)
        }
        .padding(.vertical)
    }
}

#Preview {
    RecordView()
        .environmentObject(recordViewModelMock)
}
