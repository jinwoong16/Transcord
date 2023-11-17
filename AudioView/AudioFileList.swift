//
//  AudioFileList.swift
//  Viewer
//
//  Created by 금보성 on 11/14/23.
//

import SwiftUI

struct AudioFileList: View {
    var body: some View {
        NavigationView {
            List(audiofiles) { audiofile in
                NavigationLink {
                    AudioDetailView(audiofile: audiofile)
                } label: {
                    AudioFileRow(audiofile: audiofile)
                }
            }
            .padding([.top, .trailing])
            .navigationBarTitle("스위프트UI", displayMode: .inline)
            .listStyle(PlainListStyle())
            
        }
    }
}

#Preview {
    AudioFileList()
}
