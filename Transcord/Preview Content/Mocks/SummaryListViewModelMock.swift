//
//  SummaryListViewModelMock.swift
//  Transcord
//
//  Created by 금보성 on 12/7/23.
//

import Foundation

let summarys: [Summary] = [
    .init(id: UUID(), title: "2023-11-19_21/26/37", url: URL(filePath: "")),
    .init(id: UUID(), title: "2023-11-19_21/26/50", url: URL(filePath: ""))
]

let summaryListViewModelMock: SummaryListViewModel = {
    let vm = SummaryListViewModel()
    vm.summarys = summarys
    return vm
}()
