//
//  SummaryView.swift
//  Transcord
//
//  Created by 금보성 on 12/7/23.
//

import SwiftUI

struct SummaryListView: View {
    @EnvironmentObject var viewModel: SummaryListViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.summarys) { summary in
                    NavigationLink {
                        SummaryDetailView(summary: summary)
                    } label: {
                        SummaryListRow(summary: summary)
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
    SummaryListView()
        .environmentObject(summaryListViewModelMock)
}
