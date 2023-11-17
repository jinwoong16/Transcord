//
//  SumView.swift
//  Viewer
//
//  Created by 금보성 on 11/9/23.
//

import SwiftUI
 
struct SumupfileModel: Identifiable {
    var id: UUID = UUID()
    let name: String
}

var sumupfileList : [SumupfileModel] = [
    SumupfileModel(name: "피카츄"),
    SumupfileModel(name: "파이리"),
    SumupfileModel(name: "이상해씨"),
    SumupfileModel(name: "꼬북이")
]


struct SumupMainView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(sumupfileList) { file in
                    NavigationLink {
                        SumupDetailView()
                    } label: {
                        Text(file.name)
                    }
                }
            }
            .navigationBarTitle("스위프트UI", displayMode: .inline)
            .listStyle(PlainListStyle())
        }
        
    }
}
 
#Preview {
    SumupMainView()
}
