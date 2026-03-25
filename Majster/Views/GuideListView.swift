//
//  GuideListView.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct GuideListView: View {
    let category: Category
    @State private var searchText = ""
    @State private var isSearching = false

    private var categoryGuides: [Guide] {
        AppData.allGuides.filter { $0.categoryId == category.id }
    }

    private var filteredGuides: [Guide] {
        guard !searchText.trimmingCharacters(in: .whitespaces).isEmpty else {
            return categoryGuides
        }
        return categoryGuides.filter {
            $0.title.localizedCaseInsensitiveContains(searchText)
        }
    }

    private var availableGuidesLabel: String {
        let n = filteredGuides.count
        switch n {
        case 1: return "1 dostępny poradnik"
        case 2...4: return "\(n) dostępne poradniki"
        default: return "\(n) dostępnych poradników"
        }
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                headerStats

                if filteredGuides.isEmpty {
                    emptyState
                } else {
                    ForEach(filteredGuides) { guide in
                        GuideRow(guide: guide)
                    }
                    .padding(.horizontal)
                }
            }
            .padding(.vertical)
        }
        .navigationTitle(category.title)
        .navigationBarTitleDisplayMode(.large)
        .searchable(text: $searchText, isPresented: $isSearching, prompt: "Szukaj")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isSearching = true
                } label: {
                    Image(systemName: "magnifyingglass")
                }
            }
        }
        .background(Color(.systemGroupedBackground).ignoresSafeArea())
    }

    private var headerStats: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(availableGuidesLabel)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Image(systemName: category.icon)
                .font(.title)
                .foregroundColor(category.color)
        }
        .padding()
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(12)
        .padding(.horizontal)
    }
    
    private var emptyState: some View {
        VStack(spacing: 20) {
            Image(systemName: "hammer.circle")
                .font(.system(size: 60))
                .foregroundColor(.gray)
            Text("Wkrótce dodamy tu nowe poradniki!")
                .font(.headline)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 50)
    }
}

struct GuideRow: View {
    let guide: Guide
    
    var body: some View {
        NavigationLink(destination: GuideView(guide: guide)) {
            HStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 12)
                    .fill(LinearGradient(colors: guide.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 80, height: 80)
                    .overlay(
                        Image(systemName: "play.fill")
                            .foregroundColor(.white)
                            .opacity(0.5)
                    )
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(guide.title)
                        .font(.headline)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                    
                    HStack(spacing: 12) {
                        Label(guide.difficulty, systemImage: "chart.bar.fill")
                        Label(guide.timeEstimate, systemImage: "clock.fill")
                    }
                    .font(.caption)
                    .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.orange)
            }
            .padding()
            .background(Color(.secondarySystemGroupedBackground))
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    NavigationStack {
        GuideListView(category: AppData.allCategories.first!)
    }
}
