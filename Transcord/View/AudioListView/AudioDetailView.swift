//
//  AudioDetailView.swift
//  Transcord
//
//  Created by 금보성 on 12/4/23.
//

import SwiftUI

struct AudioDetailView: View {
    var audio: Audio
    
    var body: some View {
        NavigationView {
            VStack {
                AudioProgressbar()
                    .padding()
                AudioButton()
            }
        }
            .navigationBarTitle(audio.title, displayMode: .inline)
            .toolbarBackground(Color("WhiteGray"),
                               for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview {
    AudioDetailView(audio: audios[0])
}
