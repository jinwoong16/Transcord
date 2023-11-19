//
//  AudioListViewModelMock.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/19/23.
//

import Foundation

let audios: [Audio] = [
    .init(id: UUID(), title: "one", url: URL(filePath: "")),
    .init(id: UUID(), title: "two", url: URL(filePath: ""))
]

let audioListViewModelMock: AudioListViewModel = AudioListViewModel()
