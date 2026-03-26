//
//  Category.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import Foundation
import SwiftUI

class Category: Identifiable, Hashable {
    let id: String
    let title: String
    let icon: String
    let color: Color
    let guideCount: Int

    init(id: String, title: String, icon: String, color: Color, guideCount: Int) {
        self.id = id
        self.title = title
        self.icon = icon
        self.color = color
        self.guideCount = guideCount
    }

    var guideCountLabel: String {
        switch guideCount {
        case 1: return "1 poradnik"
        case 2...4: return "\(guideCount) poradniki"
        default: return "\(guideCount) poradników"
        }
    }

    static func == (lhs: Category, rhs: Category) -> Bool {
        lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
