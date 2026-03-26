//
//  ElectricalGuides.swift
//  Majster
//

import SwiftUI

extension AppData {

    static let electricalGuides: [Guide] = [

        // MARK: 1. Electrical Outlet Replacement
        Guide(
            id: idGniazdkoElekt,
            title: "Wymiana gniazdka elektrycznego",
            categoryId: "electrical",
            difficulty: .intermediate,
            duration: .quick,
            gradientColors: [.yellow, .orange],
            description: "Wymiana lub montaż gniazdka elektrycznego to praca przy instalacji niskonapięciowej, którą można wykonać samodzielnie zachowując podstawowe zasady bezpieczeństwa. Najważniejsza zasada: ZAWSZE odłącz obwód od prądu przed rozpoczęciem prac.",
            requirements: [
                Requirement(name: "Gniazdko elektryczne (z uziemieniem)", type: .material, icon: "powerplug.fill"),
                Requirement(name: "Wkrętak krzyżakowy i płaski", type: .tool, icon: "screwdriver.fill"),
                Requirement(name: "Tester napięcia (bezdotykowy)", type: .tool, icon: "bolt.fill"),
                Requirement(name: "Szczypce kombinowane", type: .tool, icon: "wrench.fill"),
                Requirement(name: "Taśma izolacyjna", type: .material, icon: "rectangle.fill"),
            ],
            steps: [
                GuideStep(
                    order: 1,
                    title: "Wyłączenie obwodu i weryfikacja braku napięcia",
                    content: "Wyłącz odpowiedni bezpiecznik w rozdzielni. Sprawdź bezdotykowym testerem napięcia, że gniazdko jest martwe. Dla pewności wyłącz też sąsiednie obwody.",
                    proTip: "Nigdy nie polegaj wyłącznie na opisach bezpieczników — mogą być błędnie oznaczone. Zawsze weryfikuj brak napięcia testerem bezpośrednio przy gniazdku."
                ),
                GuideStep(
                    order: 2,
                    title: "Demontaż starego gniazdka",
                    content: "Odkręć ramkę dekoracyjną i wkręty mocujące mechanizm do puszki. Wyciągnij mechanizm, trzymając za boki — nie za przewody. Sfotografuj układ przewodów przed odłączeniem.",
                    mediaUrl: "img_socket_removal",
                    proTip: "Zdjęcie układu przewodów to ubezpieczenie na wypadek pomyłki. Rób je zawsze, nawet przy prostych wymianach."
                ),
                GuideStep(
                    order: 3,
                    title: "Identyfikacja przewodów",
                    content: "Trzy przewody: brązowy lub czarny = faza (L), niebieski = zero (N), żółto-zielony = uziemienie (PE). Jeśli kolory są niestandartowe (stara instalacja), zmierz testerem.",
                    proTip: "W starych instalacjach (przed 1990) kolory mogą być niestandardowe lub identyczne. W takim przypadku skonsultuj się z elektrykiem — to kwestia bezpieczeństwa."
                ),
                GuideStep(
                    order: 4,
                    title: "Montaż nowego gniazdka",
                    content: "Podłącz przewody do zacisków nowego gniazdka: L → zacisk fazy, N → zero, PE → uziemienie (oznaczenie na obudowie). Dokręć zaciski śrubokrętem. Wciśnij mechanizm do puszki i przykręć.",
                    mediaUrl: "video_socket_wiring",
                    proTip: "Przewody wkładaj do zaciisków na pełną głębokość — widoczna żyłka poza zaciskiem to potencjalny łuk elektryczny i pożar."
                ),
                GuideStep(
                    order: 5,
                    title: "Test działania",
                    content: "Zamontuj ramkę dekoracyjną. Włącz bezpiecznik. Sprawdź testerem napięcia obecność napięcia w gniazdku. Podłącz dowolne urządzenie i przetestuj działanie.",
                    mediaUrl: "img_socket_test"
                ),
            ]
        ),
    ]
}
