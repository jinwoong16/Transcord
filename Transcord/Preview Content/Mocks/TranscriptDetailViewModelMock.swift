//
//  TranscriptDetailViewModelMock.swift
//  Transcord
//
//  Created by jinwoong Kim on 12/7/23.
//

import Foundation

extension TranscriptDetailViewModel {
    convenience init() {
        self.init(transcript: transcripts[0])
        self.audioLog = "Preview"
    }
}
