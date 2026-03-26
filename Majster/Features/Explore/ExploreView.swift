//
//  ExploreView.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    let columns = [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    searchBar
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Popularne")
                            .font(.title2)
                            .bold()
                            .padding(.horizontal)
                        
                        FeaturedGuidesCarousel()
                    }
                    
                    HStack {
                        Text("Kategorie")
                            .font(.title2).bold()
                        Spacer()
                        NavigationLink(destination: CategoriesListView()) {
                            Text("Zobacz wszystkie")
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(AppData.featuredCategories) { category in
                            CategoryTile(category: category)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle("Odkrywaj")
        }
    }
    
    private var searchBar: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Czego dziś szukasz?", text: $searchText)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

#Preview {
    ExploreView()
}
