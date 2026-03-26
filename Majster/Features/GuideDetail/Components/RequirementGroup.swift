//
//  RequirementGroup.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct RequirementGroup: View {
    let heading: String
    let headingIcon: String
    let items: [Requirement]

    private let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Label(heading, systemImage: headingIcon)
                .font(.caption.weight(.semibold))
                .foregroundColor(.secondary)
                .textCase(.uppercase)

            LazyVGrid(columns: columns, alignment: .leading, spacing: 10) {
                ForEach(items) { item in
                    RequirementCell(item: item)
                }
            }
        }
    }
}

#Preview {
    RequirementGroup(
        heading: "Narzędzia",
        headingIcon: "wrench.and.screwdriver.fill",
        items: [
            Requirement(name: "Wiertarka", type: .tool, icon: "screwdriver.fill"),
            Requirement(name: "Poziomica", type: .tool, icon: "level.fill"),
            Requirement(name: "Młotek", type: .tool, icon: "hammer.fill"),
            Requirement(name: "Miarka", type: .tool, icon: "ruler.fill")
        ]
    )
    .padding()
    .background(Color(.systemGroupedBackground))
}
