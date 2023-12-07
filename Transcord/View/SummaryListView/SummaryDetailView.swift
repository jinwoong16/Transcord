//
//  SummaryDetailView.swift
//  Transcord
//
//  Created by 금보성 on 12/7/23.
//

import SwiftUI

struct SummaryDetailView: View {
    var summary: Summary
    
    var body: some View {
        NavigationView {
            Text("Hello")
        }
            .navigationBarTitle(summary.title, displayMode: .inline)
            .toolbarBackground(Color("WhiteGray"),
                               for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview {
    SummaryDetailView(summary: summarys[0])
}
