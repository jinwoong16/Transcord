//
//  RecordModel.swift
//  Viewer
//
//  Created by 금보성 on 11/9/23.
//

import Foundation
import AVFoundation

class AudioRecorderManager: NSObject, ObservableObject, AVAudioPlayerDelegate {
  /// 음성메모 녹음 관련 프로퍼티
  var audioRecorder: AVAudioRecorder?
  @Published var isRecording = false
  
  /// 음성메모 재생 관련 프로퍼티
  var audioPlayer: AVAudioPlayer?
  @Published var isPlaying = false
  @Published var isPaused = false
  
  /// 음성메모된 데이터
  var recordedFiles = [URL]()
}

extension AudioRecorderManager {
  func startRecording() {
    let fileURL = getDocumentsDirectory().appendingPathComponent("recording-\(Date().timeIntervalSince1970).m4a")
    let settings = [
      AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
      AVSampleRateKey: 12000,
      AVNumberOfChannelsKey: 1,
      AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
    ]
    
    do {
      audioRecorder = try AVAudioRecorder(url: fileURL, settings: settings)
      audioRecorder?.record()
      self.isRecording = true
    } catch {
      print("녹음 중 오류 발생: \(error.localizedDescription)")
    }
  }
  
  func stopRecording() {
    audioRecorder?.stop()
    self.recordedFiles.append(self.audioRecorder!.url)
    self.isRecording = false
  }
  
  private func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
  }
}
