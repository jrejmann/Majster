//
//  InfoPill.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct InfoPill: View {
    let icon: String
    let label: String
    var sublabel: String? = nil
    var color: Color = .primary

    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: icon)
                .font(.subheadline.weight(.semibold))
                .foregroundColor(color)
            VStack(alignment: .leading, spacing: 0) {
                Text(label)
                    .font(.subheadline.weight(.semibold))
                    .foregroundColor(color == .secondary ? .primary : color)
                if let sublabel {
                    Text(sublabel)
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 8)
        .background(color == .secondary ? Color(.tertiarySystemGroupedBackground) : color.opacity(0.12))
        .clipShape(Capsule())
    }
}

#Preview {
    VStack(spacing: 16) {
        InfoPill(
            icon: "hand.thumbsup.fill",
            label: "Dla każdego",
            color: .green
        )
        InfoPill(
            icon: "timer",
            label: "Szybka akcja",
            sublabel: "do 1h",
            color: .secondary
        )
    }
    .padding()
}
