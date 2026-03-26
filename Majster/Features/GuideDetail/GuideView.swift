//
//  GuideView.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

// MARK: - Guide Detail View

struct GuideView: View {
    let guide: Guide

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                heroSection
                pillsSection
                if !guide.description.isEmpty    { descriptionSection }
                if !guide.requirements.isEmpty   { requirementsSection }
                if !guide.prerequisiteIds.isEmpty { prerequisitesSection }
                if !guide.steps.isEmpty          { stepsSection }
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemGroupedBackground))
    }

    // MARK: - Hero Section

    private var heroSection: some View {
        ZStack(alignment: .bottomLeading) {
            LinearGradient(
                colors: guide.gradientColors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .frame(height: 280)

            LinearGradient(
                colors: [.clear, .black.opacity(0.6)],
                startPoint: .center,
                endPoint: .bottom
            )
            .frame(height: 280)

            Text(guide.title)
                .font(.title2.bold())
                .foregroundColor(.white)
                .shadow(radius: 4)
                .padding(.horizontal, 20)
                .padding(.bottom, 24)
        }
    }

    // MARK: - Info Pills (Difficulty & Duration)

    private var pillsSection: some View {
        HStack(spacing: 10) {
            InfoPill(
                icon: guide.difficulty.icon,
                label: guide.difficulty.rawValue,
                color: guide.difficulty.color
            )
            InfoPill(
                icon: guide.duration.icon,
                label: guide.duration.rawValue,
                sublabel: guide.duration.hint,
                color: .secondary
            )
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
        .background(Color(.secondarySystemGroupedBackground))
    }

    // MARK: - Description Section

    private var descriptionSection: some View {
        SectionCard(title: "O poradniku", icon: "text.alignleft") {
            Text(guide.description)
                .font(.body)
                .foregroundColor(.secondary)
                .lineSpacing(5)
        }
    }

    // MARK: - Requirements Section (Tools & Materials)

    private var requirementsSection: some View {
        SectionCard(title: "Czego potrzebujesz?", icon: "checklist") {
            VStack(alignment: .leading, spacing: 16) {
                if !guide.tools.isEmpty {
                    RequirementGroup(
                        heading: "Narzędzia",
                        headingIcon: "wrench.and.screwdriver.fill",
                        items: guide.tools
                    )
                }
                if !guide.materials.isEmpty {
                    if !guide.tools.isEmpty {
                        Divider()
                    }
                    RequirementGroup(
                        heading: "Materiały",
                        headingIcon: "cart.fill",
                        items: guide.materials
                    )
                }
            }
        }
    }

    // MARK: - Prerequisites Section

    private var prerequisitesSection: some View {
        let prereqs = AppData.allGuides.filter { guide.prerequisiteIds.contains($0.id) }
        return SectionCard(title: "Zanim zaczniesz", icon: "exclamationmark.triangle.fill", accentColor: .orange) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Upewnij się, że poprzednie etapy zostały wykonane:")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                ForEach(prereqs) { prereq in
                    NavigationLink(destination: GuideView(guide: prereq)) {
                        HStack(spacing: 12) {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(LinearGradient(
                                    colors: prereq.gradientColors,
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                ))
                                .frame(width: 44, height: 44)
                                .overlay(
                                    Image(systemName: "book.fill")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16))
                                )
                           
                                Text(prereq.title)
                                    .font(.subheadline.weight(.semibold))
                                    .foregroundColor(.primary)
                            
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.caption.bold())
                                .foregroundColor(.secondary)
                        }
                        .padding(12)
                        .background(Color(.tertiarySystemGroupedBackground))
                        .cornerRadius(12)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }

    // MARK: - Steps Section

    private var stepsSection: some View {
        SectionCard(title: "Kroki", icon: "list.number") {
            VStack(alignment: .leading, spacing: 0) {
                ForEach(Array(guide.sortedSteps.enumerated()), id: \.element.id) { index, step in
                    StepRow(step: step, isLast: index == guide.sortedSteps.count - 1)
                }
            }
        }
    }
}

// MARK: - Preview

#Preview {
    NavigationStack {
        GuideView(guide: AppData.allGuides.first(where: { !$0.prerequisiteIds.isEmpty })!)
    }
}
