//
//  AudilDetailProgressbar.swift
//  Transcord
//
//  Created by 금보성 on 12/4/23.
//

import SwiftUI

struct AudioProgressbar: View {
    
    @State private var isOn: Bool = true
    @State private var time: Double = 0.0
    @State private var curMin: Int = 0
    @State private var curSec: Int = 0
    @State private var totalMin: Int = 195 / 60
    @State private var totalSec: Int = 195 % 60
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Slider(value: $time, in: 0...195, step: 1)
                .accentColor(Color("MyColor"))
                .onReceive(timer) { _ in
                    if isOn && time < 195 {
                        time += 1
                        curMin = Int(time) / 60
                        curSec = Int(time) % 60
                    }
                }
            HStack {
                Text("\(curMin):\(String(format: "%02d",curSec))")
                Spacer()
                Text("\(totalMin):\(String(format: "%02d", totalSec))")
            }
        }
    }
    
}

#Preview {
    AudioProgressbar()
}
