//
//  ContentView.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct ContentView: View {
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

struct WorkshopView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Aktywne projekty") {
                    Text("Malowanie salonu: 60%")
                    Text("Lazienka: planowanie")
                }
                Section("Na później") {
                    Text("Zapisane poradniki")
                    Text("Listy zakupow")
                }
            }
            .navigationTitle("Mój Warsztat")
        }
    }
}

struct AddAskView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Zadaj pytanie spoleczności")
                Text("Dodaj dziennik remontowy")
                Text("Wrzuc zdjecie usterki")
            }
            .navigationTitle("Dodaj / Zapytaj")
        }
    }
}

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
    ContentView()
}
