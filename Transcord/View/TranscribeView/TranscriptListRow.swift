//
//  TranscriptListRow.swift
//  Transcord
//
//  Created by jinwoong Kim on 12/7/23.
//

import SwiftUI

struct TranscriptListRow: View {
    var transcript: Transcript
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(transcript.title)")
                .font(.title2)
            Text("\(transcript.id)")
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

#Preview {
    TranscriptListRow(transcript: transcripts[0])
}
