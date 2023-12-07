//
//  SummaryListRow.swift
//  Transcord
//
//  Created by 금보성 on 12/7/23.
//

import SwiftUI

struct SummaryListRow: View {
    var summary: Summary
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("\(summary.title)")
                .font(.title2)
            
            Text("\(summary.id)")
                .font(.caption)
                .foregroundStyle(.gray)
        })
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

#Preview("SummaryListRow", traits: .fixedLayout(width: 400, height: 100)) {
    SummaryListRow(summary: summarys[0])
}
