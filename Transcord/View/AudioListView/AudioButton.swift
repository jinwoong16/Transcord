//
//  AudioButton.swift
//  Transcord
//
//  Created by 금보성 on 12/4/23.
//

import SwiftUI

struct AudioButton: View {
    @State private var isOn: Bool = false
    @State private var isEnd: Bool = false
    
    var body: some View {
        HStack {
            Button(
                action: {
                    isOn.toggle()
                }
            ) {
                Image(systemName: isOn ? "pause.fill" : "play.fill")
                    .font(.system(size: 25))
                    .symbolRenderingMode(.palette)
                    .contentTransition(.symbolEffect(.replace))
                    .foregroundStyle(.black)
            }
            Button(
                action: {
                    isEnd.toggle()
                }
            ) {
                Image(systemName: "stop.fill")
                    .font(.system(size: 25))
                    .foregroundStyle(.black)
                    .symbolEffect(.bounce.down, value: isEnd)
                
            }

        }
    }
}

#Preview {
    AudioButton()
}
