//
//  Difficulty.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import Foundation
import SwiftUI

// MARK: - Difficulty Enums

enum Difficulty: String, CaseIterable, Codable {
    case amateur      = "Dla każdego"
    case easy         = "Łatwe"
    case intermediate = "Wymagające"
    case pro          = "Fachowe"

    var icon: String {
        switch self {
        case .amateur:      return "hand.thumbsup.fill"     
        case .easy:         return "hammer.fill"             
        case .intermediate: return "wrench.adjustable.fill"   
        case .pro:          return "bolt.shield.fill"        
        }
    }

    var color: Color {
        switch self {
        case .amateur:      return .green
        case .easy:         return .blue
        case .intermediate: return .orange
        case .pro:          return .red
        }
    }
}

enum DurationScale: String, CaseIterable, Codable {
    case quick    = "Szybka akcja"
    case halfDay  = "Pół dnia"
    case fullDay  = "Cały dzień"
    case weekend  = "Weekend"
    case marathon = "Wiele etapów"

   var icon: String {
        switch self {
        case .quick:    return "timer"                  
        case .halfDay:  return "sunrise.fill"
        case .fullDay:  return "sun.max.fill"            
        case .weekend:  return "calendar.badge.clock"    
        case .marathon: return "square.3.layers.3d"      
        }
    }

    var hint: String {
        switch self {
        case .quick:    return "do 1h"
        case .halfDay:  return "2–4h"
        case .fullDay:  return "~8h"
        case .weekend:  return "2 dni"
        case .marathon: return "kilka dni+"
        }
    }
}

enum RequirementType: String, Codable {
    case tool     = "Narzędzie"
    case material = "Materiał"
}

// MARK: - Supporting Data Structures

struct Requirement: Identifiable, Codable {
    var id: UUID = UUID()
    let name: String
    let type: RequirementType
    let icon: String?

    init(name: String, type: RequirementType, icon: String? = nil) {
        self.name = name
        self.type = type
        self.icon = icon
    }
}

struct GuideStep: Identifiable, Codable {
    var id: UUID = UUID()
    let order: Int
    let title: String
    let content: String

    let mediaUrl: String?
    let proTip: String?

    init(
        order: Int,
        title: String,
        content: String,
        mediaUrl: String? = nil,
        proTip: String? = nil
    ) {
        self.order = order
        self.title = title
        self.content = content
        self.mediaUrl = mediaUrl
        self.proTip = proTip
    }
}
