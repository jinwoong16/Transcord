//
//  TranscriptDetailView.swift
//  Transcord
//
//  Created by jinwoong Kim on 12/7/23.
//

import SwiftUI

struct TranscriptDetailView: View {
    @StateObject var viewModel: TranscriptDetailViewModel
    
    var body: some View {
        Text("\(viewModel.audioLog)")
    }
}

#Preview {
    TranscriptDetailView(
        viewModel: TranscriptDetailViewModel()
    )
}
