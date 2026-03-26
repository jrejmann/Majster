//
//  FeaturedGuideCard.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

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
                        Label(guide.difficulty.rawValue, systemImage: guide.difficulty.icon)
                        Label(guide.duration.rawValue, systemImage: guide.duration.icon)
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

#Preview {
    NavigationStack {
        FeaturedGuideCard(guide: AppData.featuredGuides.first!)
    }
}
