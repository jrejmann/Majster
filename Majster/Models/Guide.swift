//
//  Guide.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import Foundation
import SwiftUI

class Guide: Identifiable {
    let id: UUID
    let title: String
    let categoryId: String
    let difficulty: String
    let timeEstimate: String
    let gradientColors: [Color]
    let description: String

    init(
        id: UUID = UUID(),
        title: String,
        categoryId: String,
        difficulty: String,
        timeEstimate: String,
        gradientColors: [Color],
        description: String = ""
    ) {
        self.id = id
        self.title = title
        self.categoryId = categoryId
        self.difficulty = difficulty
        self.timeEstimate = timeEstimate
        self.gradientColors = gradientColors
        self.description = description
    }
}
