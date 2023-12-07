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
        NavigationView {
            List {
                ForEach(viewModel.audios) { audio in
                    NavigationLink {
                        AudioDetailView(audio: audio)
                    } label: {
                        AudioListRow(audio: audio)
                    }
                }
            }
            .onAppear(perform: {
                viewModel.loadFiles()
            })
        }
        .listStyle(PlainListStyle())
    }
}

#Preview {
    AudioListView()
        .environmentObject(audioListViewModelMock)
}
