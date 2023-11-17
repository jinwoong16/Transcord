//
//  ScriptView.swift
//  Viewer
//
//  Created by 금보성 on 11/9/23.
//

import SwiftUI
 
struct ScriptfileModel: Identifiable {
    var id: UUID = UUID()
    let name: String
}

var scriptfileList : [ScriptfileModel] = [
    ScriptfileModel(name: "피카츄"),
    ScriptfileModel(name: "파이리"),
    ScriptfileModel(name: "이상해씨"),
    ScriptfileModel(name: "꼬북이")
]


struct ScriptMainView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(scriptfileList) { file in
                    NavigationLink {
                        ScriptDetailView()
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
    ScriptMainView()
}
