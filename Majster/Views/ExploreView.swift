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
    
    private var featuredGuide: some View {
        ZStack(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(colors: [.orange, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(height: 180)
            
            VStack(alignment: .leading) {
                Text("PORADNIK TYGODNIA")
                    .font(.caption)
                    .bold()
                    .opacity(0.8)
                
                Text("Jak położyć panele winylowe?")
                    .font(.title3)
                    .bold()
                
                Text("Poziom: Łatwy • 4-6h")
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            .padding()
        }
        .padding(.horizontal)
    }
}

struct FeaturedGuidesCarousel: View {
    @State private var currentIndex = 0

    var body: some View {
        VStack(spacing: 10) {
            TabView(selection: $currentIndex) {
                ForEach(Array(AppData.featuredGuides.enumerated()), id: \.offset) { index, guide in
                    FeaturedGuideCard(guide: guide)
                        .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 220)

            // Dot indicators
            HStack(spacing: 6) {
                ForEach(0..<AppData.featuredGuides.count, id: \.self) { index in
                    Capsule()
                        .fill(index == currentIndex ? Color.primary : Color.secondary.opacity(0.4))
                        .frame(width: index == currentIndex ? 18 : 6, height: 6)
                        .animation(.spring(response: 0.3), value: currentIndex)
                }
            }
        }
    }
}

struct FeaturedGuideCard: View {
    let guide: Guide

    private var categoryTitle: String {
        AppData.allCategories.first(where: { $0.id == guide.categoryId })?.title ?? ""
    }

    var body: some View {
        NavigationLink(destination: GuideView(guide: guide)) {
            ZStack(alignment: .bottomLeading) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(LinearGradient(
                        colors: guide.gradientColors,
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ))
                    .frame(height: 200)
                    .shadow(color: guide.gradientColors.first?.opacity(0.3) ?? .black.opacity(0.1), radius: 10, x: 0, y: 5)

                VStack(alignment: .leading, spacing: 8) {
                    Text(categoryTitle.uppercased())
                        .font(.caption2)
                        .fontWeight(.heavy)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(4)
                        .padding(.top, 16)

                    Spacer()

                    Text(guide.title)
                        .font(.title3)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)

                    HStack(spacing: 15) {
                        Label(guide.difficulty, systemImage: "chart.bar.fill")
                        Label(guide.timeEstimate, systemImage: "clock.fill")
                    }
                    .font(.subheadline)
                    .fontWeight(.medium)
                }
                .foregroundColor(.white)
                .padding(20)
            }
        }
        .buttonStyle(PlainButtonStyle())
        .padding(.horizontal)
    }
}

struct CategoryTile: View {
    let category: Category
    
    var body: some View {
        NavigationLink(destination: GuideListView(category: category)) {
            VStack(spacing: 6) {
                Image(systemName: category.icon)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .padding(.bottom, 2)
                
                Text(category.title)
                    .font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .minimumScaleFactor(0.85)
                
                Text(category.guideCountLabel)
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(.white.opacity(0.9))
            }
            .frame(maxWidth: .infinity)
            .frame(minHeight: 132)
            .padding(.vertical, 8)
            .background(category.color.opacity(0.8))
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    ExploreView()
}
