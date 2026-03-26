//
//  Guide.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import Foundation
import SwiftUI

// MARK: - Guide Model

class Guide: Identifiable {
    let id: UUID
    let title: String
    let categoryId: String
    let difficulty: Difficulty
    let duration: DurationScale
    let gradientColors: [Color]
    let description: String
    let requirements: [Requirement]
    let steps: [GuideStep]
  
    let prerequisiteIds: [UUID]

    init(
        id: UUID = UUID(),
        title: String,
        categoryId: String,
        difficulty: Difficulty,
        duration: DurationScale,
        gradientColors: [Color],
        description: String = "",
        requirements: [Requirement] = [],
        steps: [GuideStep] = [],
        prerequisiteIds: [UUID] = []
    ) {
        self.id = id
        self.title = title
        self.categoryId = categoryId
        self.difficulty = difficulty
        self.duration = duration
        self.gradientColors = gradientColors
        self.description = description
        self.requirements = requirements
        self.steps = steps
        self.prerequisiteIds = prerequisiteIds
    }

    // MARK: - Computed Properties

    var tools: [Requirement] {
        requirements.filter { $0.type == .tool }
    }

    var materials: [Requirement] {
        requirements.filter { $0.type == .material }
    }

    var sortedSteps: [GuideStep] {
        steps.sorted { $0.order < $1.order }
    }
}
