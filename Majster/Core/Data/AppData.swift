//
//  AppData.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct AppData {

    // MARK: - Static UUIDs for linking prerequisites

    static let idGruntowanieScian    = UUID(uuidString: "00000001-0000-0000-0000-000000000001")!
    static let idMalowanieSufitu     = UUID(uuidString: "00000001-0000-0000-0000-000000000002")!
    static let idPrzygotowanieScian  = UUID(uuidString: "00000001-0000-0000-0000-000000000003")!
    static let idUkladaniePaneli     = UUID(uuidString: "00000002-0000-0000-0000-000000000001")!
    static let idListwyPrzypadlowe   = UUID(uuidString: "00000002-0000-0000-0000-000000000002")!
    static let idWymianaBaterii      = UUID(uuidString: "00000003-0000-0000-0000-000000000001")!
    static let idGniazdkoElekt       = UUID(uuidString: "00000004-0000-0000-0000-000000000001")!
    static let idPaneleWinylowe      = UUID(uuidString: "00000002-0000-0000-0000-000000000003")!

    // MARK: - Categories

    static let allCategories: [Category] = [
        Category(id: "painting",      title: "Malowanie",    icon: "paintpalette.fill",       color: .blue,   guideCount: 3),
        Category(id: "flooring",      title: "Podłogi",      icon: "square.grid.3x3.fill",    color: .brown,  guideCount: 3),
        Category(id: "plumbing",      title: "Hydraulika",   icon: "drop.fill",               color: .cyan,   guideCount: 1),
        Category(id: "electrical",    title: "Elektryka",    icon: "bolt.fill",               color: .yellow, guideCount: 1),
        Category(id: "carpentry",     title: "Stolarka",     icon: "hammer.fill",             color: .orange, guideCount: 7),
        Category(id: "garden",        title: "Ogród",        icon: "leaf.fill",               color: .green,  guideCount: 20),
        Category(id: "windows-doors", title: "Okna i Drzwi", icon: "door.right.hand.closed",  color: .gray,   guideCount: 5),
        Category(id: "finishing",     title: "Wykończenia",  icon: "level.fill",              color: .indigo, guideCount: 14),
    ]

    static var featuredCategories: [Category] {
        Array(allCategories.prefix(6))
    }

    // MARK: - Guides

    static let allGuides: [Guide] = paintingGuides + flooringGuides + plumbingGuides + electricalGuides

    static var featuredGuides: [Guide] {
        [
            allGuides.first(where: { $0.id == idMalowanieSufitu }),
            allGuides.first(where: { $0.id == idPaneleWinylowe }),
            allGuides.first(where: { $0.id == idWymianaBaterii }),
            allGuides.first(where: { $0.id == idGniazdkoElekt }),
            allGuides.first(where: { $0.id == idListwyPrzypadlowe }),
        ].compactMap { $0 }
    }
}
