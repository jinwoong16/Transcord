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
        NavigationStack {
            List {
                ForEach(viewModel.transcripts) { transcript in
                    NavigationLink(value: transcript) {
                        TranscriptListRow(transcript: transcript)
                    }
                }
            }
            .navigationDestination(for: Transcript.self) { transcript in
                TranscriptDetailView(
                    viewModel: TranscriptDetailViewModel(
                        transcript: transcript
                    )
                )
            }
        }
        .onAppear(perform: {
            viewModel.loadFiles()
        })
    }
}

#Preview {
    TranscriptListView()
        .environmentObject(transcriptListViewModelMock)
}
