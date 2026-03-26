//
//  CommunityView.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Feed pytan")
                Text("Dyskusje")
                Text("Rankingi ekspertow")
                Text("Najnowsze realizacje")
            }
            .navigationTitle("Spoleczność")
        }
    }
}

#Preview {
    CommunityView()
}
