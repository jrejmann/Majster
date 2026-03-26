//
//  WorkshopView.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

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

#Preview {
    WorkshopView()
}
