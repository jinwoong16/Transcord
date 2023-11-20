//
//  AudioListViewModelMock.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/19/23.
//

import Foundation

let audios: [Audio] = [
    .init(id: UUID(), title: "2023-11-19_21/26/37", url: URL(filePath: "")),
    .init(id: UUID(), title: "2023-11-19_21/26/50", url: URL(filePath: ""))
]

let audioListViewModelMock: AudioListViewModel = {
    let vm = AudioListViewModel()
    vm.audios = audios
    return vm
}()
