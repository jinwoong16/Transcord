//
//  AudioListRow.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/19/23.
//

import SwiftUI

struct AudioListRow: View {
    var audio: Audio
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("\(audio.title)")
                .font(.title)
            
            Text("\(audio.id)")
                .font(.caption)
                .foregroundStyle(.gray)
        })
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

#Preview("AudioListRow", traits: .fixedLayout(width: 400, height: 100)) {
    AudioListRow(audio: audios[0])
}
