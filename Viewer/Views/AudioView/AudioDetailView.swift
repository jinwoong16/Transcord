//
//  AudioDetailView.swift
//  Viewer
//
//  Created by 금보성 on 11/11/23.
//

import SwiftUI

struct AudioDetailView: View {
    
    var audiofile : AudioFile
    
    @StateObject var audioRecorderManager = AudioRecorderManager()
    
    var body: some View {
        NavigationView {
            VStack {
                AudioProgressbar()
                    .padding()
                HStack {
                    AudioButton(audioRecorderManager: audioRecorderManager)
                }
            }
        }
            .navigationBarTitle(audiofile.name, displayMode: .inline)
            .toolbarBackground(Color.whitegray,
                               for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
}

#Preview {
    AudioDetailView(audiofile: audiofiles[0])
}
