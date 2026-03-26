//
//  MainTabView.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            ExploreView()
                .tabItem {
                    Label("Odkrywaj", systemImage: "house")
                }
                .tag(0)

            WorkshopView()
                .tabItem {
                    Label("Mój Warsztat", systemImage: "checklist")
                }
                .tag(1)

            CommunityView()
                .tabItem {
                    Label("Społeczność", systemImage: "bubble.left.and.bubble.right")
                }
                .tag(3)

            ToolsView()
                .tabItem {
                    Label("Narzędzia", systemImage: "ruler")
                }
                .tag(4)
        }
        .tint(.orange)
    }
}

#Preview {
    MainTabView()
}
