//
//  ContentView.swift
//  Transcord
//
//  Created by jinwoong Kim on 2023/10/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                RecordView()
                    .tabItem {
                        Image(systemName: "waveform.circle")
                        Text("Record")
                    }
                AudioListView()
                    .tabItem {
                        Image(systemName: "headphones")
                        Text("Audio")
                    }
                TranscriptListView()
                    .tabItem {
                        Image(systemName: "newspaper")
                        Text("Transcript")
                    }
                ScriptListView()
                    .tabItem {
                        Image(systemName: "text.justify")
                        Text("Script")
                    }
                SummaryListView()
                    .tabItem {
                        Image(systemName: "highlighter")
                        Text("Sum-up")

                    }
            }
            .toolbarBackground(.visible, for: .tabBar)
        }
        .accentColor(Color("MyColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(recordViewModelMock)
            .environmentObject(audioListViewModelMock)
            .environmentObject(transcriptListViewModelMock)
            .environmentObject(scriptListViewModelMock)
            .environmentObject(summaryListViewModelMock)

    }
}
