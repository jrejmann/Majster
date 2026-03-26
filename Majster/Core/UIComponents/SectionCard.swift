//
//  SectionCard.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct SectionCard<Content: View>: View {
    let title: String
    let icon: String
    var accentColor: Color = .primary
    @ViewBuilder let content: () -> Content

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack(spacing: 8) {
                Image(systemName: icon)
                    .foregroundColor(accentColor)
                    .font(.subheadline.weight(.semibold))
                Text(title)
                    .font(.title3.weight(.semibold))
            }
            content()
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(16)
        .padding(.horizontal, 16)
        .padding(.top, 12)
    }
}

#Preview {
    SectionCard(title: "O poradniku", icon: "text.alignleft") {
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
            .font(.body)
            .foregroundColor(.secondary)
    }
    .padding()
    .background(Color(.systemGroupedBackground))
}
