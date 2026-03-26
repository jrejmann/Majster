//
//  PlumbingGuides.swift
//  Majster
//

import SwiftUI

extension AppData {

    static let plumbingGuides: [Guide] = [

        // MARK: 1. Sink Faucet Replacement
        Guide(
            id: idWymianaBaterii,
            title: "Wymiana baterii umywalkowej",
            categoryId: "plumbing",
            difficulty: .easy,
            duration: .quick,
            gradientColors: [.cyan, .blue],
            description: "Wymiana cieknącej lub przestarzałej baterii umywalkowej to prosta naprawa, którą możesz wykonać samodzielnie bez wzywania hydraulika. Potrzebujesz jedynie kluczy i nowej baterii.",
            requirements: [
                Requirement(name: "Bateria umywalkowa (jednootworowa)", type: .material, icon: "drop.fill"),
                Requirement(name: "Klucz płaski 24/27 lub nastawny", type: .tool, icon: "wrench.fill"),
                Requirement(name: "Klucz do baterii (klucz hakowy)", type: .tool, icon: "wrench.and.screwdriver.fill"),
                Requirement(name: "Taśma teflonowa PTFE", type: .material, icon: "rectangle.fill"),
                Requirement(name: "Wiadro lub ręcznik papierowy", type: .tool, icon: "trash"),
            ],
            steps: [
                GuideStep(
                    order: 1,
                    title: "Zakręcenie wody",
                    content: "Zakręć zawory odcinające wodę pod umywalką (prawy = zimna, lewy = ciepła). Jeśli brak zaworów — zakręć główny zawór w mieszkaniu. Odkręć kran, żeby uwolnić ciśnienie.",
                    proTip: "Jeśli zawory pod umywalką są stare i trudno się kręcą — nie forsuj. Lepiej zakręcić główny zawór i przy okazji wymienić też zawory podejściowe."
                ),
                GuideStep(
                    order: 2,
                    title: "Demontaż starej baterii",
                    content: "Odłącz wężyki przyłączeniowe od zaworów (mają nakrętki 3/8\"). Kluczem hakowym odkręć kontrę mocującą baterię od spodu blatu. Wyciągnij baterię wraz z wężykami.",
                    mediaUrl: "img_faucet_removal"
                ),
                GuideStep(
                    order: 3,
                    title: "Montaż nowej baterii",
                    content: "Nałóż uszczelkę gumową pod podstawę baterii. Wprowadź baterię przez otwór w umywalce od góry. Od spodu nałóż podkładkę i kontrę — dokręć kluczem hakowym (mocno, ale bez siłowania).",
                    proTip: "Jeśli nowa bateria nie ma podkładki gumowej, możesz uszczelnić podstawę przezroczystym silikonem sanitarnym — zapobiegnie to zbieraniu się wody pod baterią."
                ),
                GuideStep(
                    order: 4,
                    title: "Podłączenie wężyków",
                    content: "Podłącz wężyki: zimna woda po prawej stronie (oznaczenie C lub niebieski), ciepła po lewej (H lub czerwony). Dokręć nakrętki ręcznie, a następnie kluczem o ćwierć obrotu.",
                    mediaUrl: "img_hose_connection",
                    proTip: "Nie przekręcaj nakrętek wężyków — wbudowana uszczelka nie wymaga siły. Nadmierne dokręcenie może pęknąć uszczelkę i stworzyć ciek."
                ),
                GuideStep(
                    order: 5,
                    title: "Test szczelności",
                    content: "Powoli odkręć zawory. Sprawdź wszystkie połączenia suchą ręką lub papierowym ręcznikiem — żadne miejsce nie może być wilgotne. Po 10 minutach ponownie skontroluj połączenia.",
                    proTip: "Zostaw papierowy ręcznik pod połączeniami na godzinę po zakończeniu — nawet małe krople wychwycisz bez siedzenia pod umywalką."
                ),
            ]
        ),
    ]
}
