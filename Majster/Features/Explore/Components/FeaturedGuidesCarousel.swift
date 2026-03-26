//
//  FeaturedGuidesCarousel.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

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

#Preview {
    NavigationStack {
        FeaturedGuidesCarousel()
    }
}
