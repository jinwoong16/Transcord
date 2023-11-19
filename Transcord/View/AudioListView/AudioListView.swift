//
//  AudioListView.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/19/23.
//

import SwiftUI

struct AudioListView: View {
    let audios: [Audio]
    
    var body: some View {
        List {
            ForEach(audios) { audio in
                    AudioListRow(audio: audio)
            }
        }
    }
}

#Preview {
    AudioListView(
        audios: audios
    )
}
