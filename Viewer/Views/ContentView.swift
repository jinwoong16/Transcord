//
//  ContentView.swift
//  Viewer
//
//  Created by 금보성 on 11/7/23.
//
import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().scrollEdgeAppearance = .init()
    }
    
    
    var body: some View {
        TabView {
            RecordMainView(audioRecorderManager: AudioRecorderManager())
                .tabItem {
                  Image(systemName: "mic.fill")
                  Text("Record")
                    
                    .foregroundColor(.myColor)
                }
            AudioMainView()
                .tabItem {
                  Image(systemName: "recordingtape")
                  Text("Audio")
                }
            ScriptMainView()
                .tabItem {
                  Image(systemName: "text.justify")
                  Text("Script")
                }
            SumupMainView()
              .tabItem {
                Image(systemName: "highlighter")
                Text("Sum-Up")
              }
        }
        .font(.headline)
        .accentColor(.myColor)
    }
}

#Preview {
    ContentView()
}
