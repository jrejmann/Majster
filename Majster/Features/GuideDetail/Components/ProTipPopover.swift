//
//  ProTipPopover.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct ProTipPopover: View {
    let tip: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 10) {
                ZStack {
                    Circle()
                        .fill(Color.yellow.opacity(0.2))
                        .frame(width: 36, height: 36)
                    Image(systemName: "lightbulb.fill")
                        .foregroundColor(.yellow)
                        .font(.system(size: 16))
                }
                Text("Wskazówka")
                    .font(.headline)
            }

            Divider()

            Text(tip)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineSpacing(5)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(16)
        .frame(width: 280)
    }
}

#Preview {
    ProTipPopover(tip: "Jeśli ściana jest bardzo brudna, użyj roztworu wody z detergentem. Pamiętaj, aby dokładnie wysuszyć powierzchnię przed malowaniem.")
}
