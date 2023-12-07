//
//  ScriptDetailView.swift
//  Transcord
//
//  Created by 금보성 on 12/7/23.
//

import SwiftUI

struct ScriptDetailView: View {
    var script: Script
    
    var body: some View {
        NavigationView {
            Text("Hello")
        }
            .navigationBarTitle(script.title, displayMode: .inline)
            .toolbarBackground(Color("WhiteGray"),
                               for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview {
    ScriptDetailView(script: scripts[0])
}
