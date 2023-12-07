//
//  TranscriptListView.swift
//  Transcord
//
//  Created by jinwoong Kim on 12/7/23.
//

import SwiftUI

struct TranscriptListView: View {
    @EnvironmentObject var viewModel: TranscriptListViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TranscriptListView()
        .environmentObject(transcriptListViewModelMock)
}
