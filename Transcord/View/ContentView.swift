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
            }
            .toolbarBackground(.visible, for: .tabBar)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(recordViewModelMock)
            .environmentObject(audioListViewModelMock)
    }
}
