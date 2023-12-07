//
//  ScriptView.swift
//  Transcord
//
//  Created by 금보성 on 12/7/23.
//

import SwiftUI

struct ScriptListView: View {
    @EnvironmentObject var viewModel: ScriptListViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.scripts) { script in
                    NavigationLink {
                        ScriptDetailView(script: script)
                    } label: {
                        ScriptListRow(script: script)
                    }
                }
            }
            .onAppear(perform: {
                viewModel.loadFiles()
            })
        }
        .listStyle(PlainListStyle())
    }
}

#Preview {
    ScriptListView()
        .environmentObject(scriptListViewModelMock)
}
