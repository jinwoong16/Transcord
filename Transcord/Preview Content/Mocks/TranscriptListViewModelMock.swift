//
//  TranscriptListViewModelMock.swift
//  Transcord
//
//  Created by jinwoong Kim on 12/7/23.
//

import Foundation

let transcripts: [Transcript] = [
    .init(id: UUID(), title: "2023-12-19_21/26/37", url: URL(filePath: "")),
    .init(id: UUID(), title: "2023-12-30_21/26/50", url: URL(filePath: ""))
]

let transcriptListViewModelMock: TranscriptListViewModel = {
    let vm = TranscriptListViewModel()
    vm.transcripts = transcripts
    return vm
}()
