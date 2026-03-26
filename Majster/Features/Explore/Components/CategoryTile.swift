//
//  CategoryTile.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct CategoryTile: View {
    let category: Category
    
    var body: some View {
        NavigationLink(destination: GuideListView(category: category)) {
            VStack(spacing: 6) {
                Image(systemName: category.icon)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .padding(.bottom, 2)
                
                Text(category.title)
                    .font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .minimumScaleFactor(0.85)
                
                Text(category.guideCountLabel)
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(.white.opacity(0.9))
            }
            .frame(maxWidth: .infinity)
            .frame(minHeight: 132)
            .padding(.vertical, 8)
            .background(category.color.opacity(0.8))
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    NavigationStack {
        CategoryTile(category: AppData.allCategories.first!)
            .padding()
    }
}
