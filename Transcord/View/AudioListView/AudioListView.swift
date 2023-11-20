//
//  AudioListView.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/19/23.
//

import SwiftUI

struct AudioListView: View {
    @EnvironmentObject var viewModel: AudioListViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.audios) { audio in
                AudioListRow(audio: audio)
            }
        }
        .onAppear(perform: {
            viewModel.loadFiles()
        })
    }
}

#Preview {
    AudioListView()
        .environmentObject(audioListViewModelMock)
}
