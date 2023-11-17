//
//  AudioFileRow.swift
//  Viewer
//
//  Created by 금보성 on 11/14/23.
//

import SwiftUI

struct AudioFileRow: View {
    var audiofile: AudioFile
    
    var body: some View {
        HStack {
            Text(audiofile.name)
            Spacer()
        }
    }
}

#Preview {
    AudioFileRow(audiofile: audiofiles[0])
}
