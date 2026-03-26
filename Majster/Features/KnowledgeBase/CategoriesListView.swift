//
//  CategoriesListView.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct CategoriesListView: View {
    var body: some View {
        List(AppData.allCategories) { category in
            NavigationLink(destination: GuideListView(category: category)) {
                HStack(spacing: 15) {
                    Image(systemName: category.icon)
                        .foregroundColor(category.color)
                        .frame(width: 30)
                    
                    VStack(alignment: .leading) {
                        Text(category.title).font(.headline)
                        Text(category.guideCountLabel)
                            .font(.caption).foregroundColor(.secondary)
                    }
                }
            }
        }
        .navigationTitle("Wszystkie kategorie")
    }
}

#Preview {
    NavigationStack {
        CategoriesListView()
    }
}
