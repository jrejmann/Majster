//
//  MediaPlaceholder.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct MediaPlaceholder: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color(.tertiarySystemGroupedBackground))
            .frame(height: 180)
            .overlay(
                VStack(spacing: 8) {
                    Image(systemName: "photo.fill")
                        .font(.system(size: 32))
                        .foregroundColor(Color(.systemGray3))
                    Text("Zdjęcie / wideo")
                        .font(.caption)
                        .foregroundColor(Color(.systemGray3))
                }
            )
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(Color(.separator), lineWidth: 1)
            )
    }
}

#Preview {
    MediaPlaceholder()
        .padding()
        .background(Color(.systemGroupedBackground))
}
