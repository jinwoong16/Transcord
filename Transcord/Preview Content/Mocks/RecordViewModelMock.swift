//
//  RecordViewModelMock.swift
//  Transcord
//
//  Created by jinwoong Kim on 11/19/23.
//

import Foundation
import PWRecordKit
import PWTranscribingKit
import PWNetworkingKit
import PWApiWorker

let recordViewModelMock: RecordViewModel = RecordViewModel(
    audioRecorder: DefaultAudioRecorder(),
    transcriber: Transcriber(
        api: VITOApiService(userAuth: VitoObject())
    )
)
