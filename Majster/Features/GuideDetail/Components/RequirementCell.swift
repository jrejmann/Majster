//
//  RequirementCell.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct RequirementCell: View {
    let item: Requirement

    var body: some View {
        VStack(spacing: 6) {
            Image(systemName: item.icon ?? defaultIcon)
                .font(.title2)
                .foregroundColor(.primary)
                .frame(width: 40, height: 40)
                .background(Color(.tertiarySystemGroupedBackground))
                .cornerRadius(10)

            Text(item.name)
                .font(.caption2)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .foregroundColor(.primary)
        }
        .frame(maxWidth: .infinity)
    }

    private var defaultIcon: String {
        item.type == .tool ? "wrench.fill" : "shippingbox.fill"
    }
}

#Preview("Tool") {
    VStack(spacing: 20) {
        RequirementCell(item: Requirement(name: "Wiertarka", type: .tool, icon: "screwdriver.fill"))
        RequirementCell(item: Requirement(name: "Poziomica", type: .tool, icon: "level.fill"))
    }
    .padding()
    .background(Color(.systemGroupedBackground))
}

#Preview("Material") {
    VStack(spacing: 20) {
        RequirementCell(item: Requirement(name: "Farba", type: .material, icon: "paintbrush.fill"))
        RequirementCell(item: Requirement(name: "Klej", type: .material, icon: "drop.fill"))
    }
    .padding()
    .background(Color(.systemGroupedBackground))
}
