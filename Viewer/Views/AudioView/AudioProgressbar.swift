//
//  AudioProgressbar.swift
//  Viewer
//
//  Created by 금보성 on 11/14/23.
//

import SwiftUI

struct AudioProgressbar: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(LinearProgressViewStyle(tint: .myColor))
    }
}

#Preview {
    AudioProgressbar()
}
