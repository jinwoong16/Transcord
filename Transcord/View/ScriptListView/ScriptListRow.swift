//
//  ScriptListRow.swift
//  Transcord
//
//  Created by 금보성 on 12/7/23.
//

import SwiftUI

struct ScriptListRow: View {
    var script: Script
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("\(script.title)")
                .font(.title2)
            
            Text("\(script.id)")
                .font(.caption)
                .foregroundStyle(.gray)
        })
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

#Preview("ScriptListRow", traits: .fixedLayout(width: 400, height: 100)) {
    ScriptListRow(script: scripts[0])
}
