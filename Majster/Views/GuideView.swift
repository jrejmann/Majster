//
//  GuideView.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct GuideView: View {
    let guide: Guide

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                heroSection
                infoSection
                descriptionSection
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemGroupedBackground))
    }

    // MARK: - Hero

    private var heroSection: some View {
        ZStack(alignment: .bottomLeading) {
            LinearGradient(
                colors: guide.gradientColors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .frame(height: 300)

            // Subtle dark scrim so title is readable on any gradient
            LinearGradient(
                colors: [.clear, .black.opacity(0.55)],
                startPoint: .center,
                endPoint: .bottom
            )
            .frame(height: 300)

            VStack(alignment: .leading, spacing: 6) {
                Text(guide.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 4)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 24)
        }
    }

    // MARK: - Info chips

    private var infoSection: some View {
        HStack(spacing: 12) {
            InfoChip(icon: "chart.bar.fill",  label: guide.difficulty)
            InfoChip(icon: "clock.fill",      label: guide.timeEstimate)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.secondarySystemGroupedBackground))
    }

    // MARK: - Description

    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Opis")
                .font(.title3)
                .fontWeight(.semibold)

            Text(guide.description.isEmpty ? "Opis poradnika wkrótce." : guide.description)
                .font(.body)
                .foregroundColor(.secondary)
                .lineSpacing(5)
        }
        .padding(20)
    }
}

// MARK: - InfoChip

private struct InfoChip: View {
    let icon: String
    let label: String

    var body: some View {
        Label(label, systemImage: icon)
            .font(.subheadline.weight(.medium))
            .foregroundColor(.primary)
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
            .background(Color(.tertiarySystemGroupedBackground))
            .clipShape(Capsule())
    }
}

#Preview {
    NavigationStack {
        GuideView(guide: AppData.allGuides.first!)
    }
}
