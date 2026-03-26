//
//  ToolsView.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct ToolsView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Kalkulator farb, plytek i paneli")
                Text("Poziomica")
                Text("Przelicznik jednostek")
            }
            .navigationTitle("Narzędzia")
        }
    }
}

#Preview {
    ToolsView()
}
