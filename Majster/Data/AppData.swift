//
//  AppData.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct AppData {
    static let allCategories: [Category] = [
        Category(id: "painting",      title: "Malowanie",    icon: "paintpalette.fill",        color: .blue,   guideCount: 15),
        Category(id: "flooring",      title: "Podłogi",      icon: "square.grid.3x3.fill",     color: .brown,  guideCount: 8),
        Category(id: "plumbing",      title: "Hydraulika",   icon: "drop.fill",                color: .cyan,   guideCount: 12),
        Category(id: "electrical",    title: "Elektryka",    icon: "bolt.fill",                color: .yellow, guideCount: 10),
        Category(id: "carpentry",     title: "Stolarka",     icon: "hammer.fill",              color: .orange, guideCount: 7),
        Category(id: "garden",        title: "Ogród",        icon: "leaf.fill",                color: .green,  guideCount: 20),
        Category(id: "windows-doors", title: "Okna i Drzwi", icon: "door.right.hand.closed",  color: .gray,   guideCount: 5),
        Category(id: "finishing",     title: "Wykończenia",  icon: "level.fill",               color: .indigo, guideCount: 14),
    ]

    static let allGuides: [Guide] = [
        Guide(
            title: "Malowanie sufitu bez smug",
            categoryId: "painting",
            difficulty: "Łatwy",
            timeEstimate: "3-5h",
            gradientColors: [.blue, .cyan],
            description: "Malowanie sufitu to jedno z tych zadań, które łatwo zepsuć przez nieestetyczne smugi i zacieki. Kluczem do sukcesu jest odpowiednie przygotowanie powierzchni oraz właściwa technika nakładania farby.\n\nZacznij od dokładnego zagruntowania sufitu — dobry grunt wyrównuje chłonność podłoża i sprawia, że farba kryje równomiernie. Używaj wałka z odpowiednim włosiem: krótkie włosie do gładkich powierzchni, dłuższe do chropowatych.\n\nNanoś farbę ruchami „W\" lub „M\", nakładając kolejne pasy z zachowaniem mokrej krawędzi. Nigdy nie wracaj do już zaschniętej powierzchni — to główna przyczyna smug. Maluj przy rozproszonym świetle, by na bieżąco wychwytywać niedokładności."
        ),
        Guide(
            title: "Przygotowanie ścian pod gładź",
            categoryId: "painting",
            difficulty: "Średni",
            timeEstimate: "1-2 dni",
            gradientColors: [.blue, .purple],
            description: "Gładź szpachlowa nadaje ścianom idealnie gładką, estetyczną powierzchnię, gotową pod malowanie lub tapetowanie. Prawidłowe przygotowanie podłoża jest kluczowe — od niego zależy trwałość i wygląd końcowego efektu.\n\nPrzed nałożeniem gładzi oczyść ściany z kurzu i luźnych fragmentów tynku. Zagruntuj powierzchnię, by poprawić przyczepność masy szpachlowej. Nakładaj gładź szeroką pacą stalową, cienkimi warstwami — każda warstwa powinna dobrze wyschnąć przed nałożeniem kolejnej.\n\nPo wyschnięciu ostatniej warstwy szlifuj powierzchnię papierem ściernym o gradacji 120–180, aż do uzyskania idealnej gładkości. Usuń pył i zagruntuj ponownie przed malowaniem."
        ),
        Guide(
            title: "Układanie paneli laminowanych",
            categoryId: "flooring",
            difficulty: "Średni",
            timeEstimate: "6-8h",
            gradientColors: [.orange, .brown],
            description: "Panele laminowane to popularny i stosunkowo łatwy w montażu sposób na odnowienie podłogi. Efekt końcowy w dużej mierze zależy od staranności przygotowania podłoża i zachowania właściwych dylatacji.\n\nPodłoże musi być równe, suche i czyste. Nierówności powyżej 2 mm na 2 metry bieżące należy wyrównać masą poziomującą. Rozłóż podkład podłogowy — wygłusza kroki i izoluje od wilgoci.\n\nUkładaj panele równolegle do padającego światła, zaczynając od lewej strony pomieszczenia. Pamiętaj o zachowaniu szczeliny dylatacyjnej 8–10 mm przy wszystkich ścianach i przeszkodach. Używaj klocka montażowego i młotka, by nie uszkodzić zamka."
        ),
        Guide(
            title: "Montaż listew przypodłogowych",
            categoryId: "flooring",
            difficulty: "Łatwy",
            timeEstimate: "2-4h",
            gradientColors: [.orange, .yellow],
            description: "Listwy przypodłogowe to ostatni akcent wykończenia podłogi — zakrywają szczelinę dylatacyjną i nadają wnętrzu schludny wygląd. Ich montaż jest prosty, ale wymaga precyzyjnego cięcia narożników.\n\nDo cięcia listw pod kątem 45° użyj ukośnicy. Zacznij od narożników wewnętrznych, następnie zewnętrznych, a na końcu proste odcinki. Listwy mocuj do ściany (nie do podłogi!) za pomocą kołków i wkrętów lub specjalnego kleju montażowego.\n\nUżyj korka lub silikonu w kolorze listwy do wypełnienia szczelin i połączeń. Efektem będzie estetyczne, szczelne wykończenie przez lata."
        ),
        Guide(
            title: "Wymiana baterii umywalkowej",
            categoryId: "plumbing",
            difficulty: "Łatwy",
            timeEstimate: "1h",
            gradientColors: [.cyan, .blue],
            description: "Wymiana cieknącej lub przestarzałej baterii umywalkowej to prosta naprawa, którą możesz wykonać samodzielnie bez wzywania hydraulika. Potrzebujesz jedynie kluczy płaskich lub nastawnych i nowej baterii.\n\nPrzed przystąpieniem do pracy zakręć zawory odcinające wodę pod umywalką lub główny zawór w mieszkaniu. Odkręć stary osprzęt: nakrętki przyłączeniowe wężyków i kontrę mocującą baterię od spodu blatu.\n\nWprowadź nową baterię przez otwór w umywalce, zamocuj kontrę i podłącz wężyki — zimna woda po prawej, ciepła po lewej. Odkręć zawory i sprawdź szczelność wszystkich połączeń."
        ),
        Guide(
            title: "Podłączenie gniazdka elektrycznego",
            categoryId: "electrical",
            difficulty: "Średni",
            timeEstimate: "30 min",
            gradientColors: [.yellow, .orange],
            description: "Wymiana lub montaż gniazdka elektrycznego to praca przy instalacji niskonapięciowej, którą można wykonać samodzielnie, zachowując podstawowe zasady bezpieczeństwa. Najważniejsze: zawsze odłącz obwód od prądu przed rozpoczęciem prac.\n\nWyłącz bezpiecznik odpowiedniego obwodu i sprawdź brakiem napięcia przy pomocy testera lub wkrętaka z diodą. Odkręć stare gniazdko i zapamiętaj lub sfotografuj układ przewodów: faza (brązowy/czarny), zero (niebieski), uziemienie (żółto-zielony).\n\nPodłącz przewody do nowego gniazdka zgodnie z oznaczeniami (L, N, PE). Zamocuj gniazdko w puszce, włącz bezpiecznik i sprawdź działanie testem napięcia."
        ),
    ]

    static var featuredCategories: [Category] {
        Array(allCategories.prefix(6))
    }

    static let featuredGuides: [Guide] = [
        Guide(
            title: "Jak położyć panele winylowe?",
            categoryId: "flooring",
            difficulty: "Łatwy",
            timeEstimate: "4-6h",
            gradientColors: [.orange, .red],
            description: "Panele winylowe (LVT) to trwała i wodoodporna alternatywa dla laminatu. Układa się je metodą click bez kleju, co sprawia, że montaż jest szybki i czysty.\n\nPrzygotuj podłoże: musi być równe, suche i czyste. W przeciwieństwie do laminatu panele winylowe nie wymagają podkładu — układa się je bezpośrednio na wylewce.\n\nZacznij od lewego górnego narożnika, zachowując szczelinę dylatacyjną 5 mm. Panele łącz pod kątem 30°, dociskając do zatrzaśnięcia. Na końcu zamontuj listwy i progi progowe w drzwiach."
        ),
        Guide(
            title: "Malowanie sufitu bez smug",
            categoryId: "painting",
            difficulty: "Łatwy",
            timeEstimate: "3-5h",
            gradientColors: [.blue, .cyan],
            description: "Malowanie sufitu to jedno z tych zadań, które łatwo zepsuć przez nieestetyczne smugi i zacieki. Kluczem do sukcesu jest odpowiednie przygotowanie powierzchni oraz właściwa technika nakładania farby.\n\nZacznij od dokładnego zagruntowania sufitu — dobry grunt wyrównuje chłonność podłoża i sprawia, że farba kryje równomiernie. Używaj wałka z odpowiednim włosiem: krótkie włosie do gładkich powierzchni, dłuższe do chropowatych.\n\nNanoś farbę ruchami „W\" lub „M\", nakładając kolejne pasy z zachowaniem mokrej krawędzi. Nigdy nie wracaj do już zaschniętej powierzchni — to główna przyczyna smug."
        ),
        Guide(
            title: "Wymiana baterii umywalkowej",
            categoryId: "plumbing",
            difficulty: "Łatwy",
            timeEstimate: "1h",
            gradientColors: [.cyan, .teal],
            description: "Wymiana cieknącej lub przestarzałej baterii umywalkowej to prosta naprawa, którą możesz wykonać samodzielnie bez wzywania hydraulika.\n\nPrzed przystąpieniem do pracy zakręć zawory odcinające wodę pod umywalką lub główny zawór w mieszkaniu. Odkręć stary osprzęt: nakrętki przyłączeniowe wężyków i kontrę mocującą baterię od spodu blatu.\n\nWprowadź nową baterię przez otwór w umywalce, zamocuj kontrę i podłącz wężyki — zimna woda po prawej, ciepła po lewej."
        ),
        Guide(
            title: "Podłączenie gniazdka elektrycznego",
            categoryId: "electrical",
            difficulty: "Średni",
            timeEstimate: "30 min",
            gradientColors: [.yellow, .orange],
            description: "Wymiana lub montaż gniazdka elektrycznego to praca przy instalacji niskonapięciowej, którą można wykonać samodzielnie, zachowując podstawowe zasady bezpieczeństwa.\n\nWyłącz bezpiecznik odpowiedniego obwodu i sprawdź brak napięcia przy pomocy testera. Odkręć stare gniazdko i sfotografuj układ przewodów.\n\nPodłącz przewody do nowego gniazdka zgodnie z oznaczeniami (L, N, PE). Zamocuj gniazdko w puszce, włącz bezpiecznik i sprawdź działanie."
        ),
        Guide(
            title: "Montaż listew przypodłogowych",
            categoryId: "flooring",
            difficulty: "Łatwy",
            timeEstimate: "2-4h",
            gradientColors: [.green, .mint],
            description: "Listwy przypodłogowe zakrywają szczelinę dylatacyjną i nadają wnętrzu schludny wygląd. Ich montaż jest prosty, ale wymaga precyzyjnego cięcia narożników.\n\nDo cięcia listw pod kątem 45° użyj ukośnicy. Zacznij od narożników wewnętrznych, następnie zewnętrznych, a na końcu proste odcinki.\n\nListwy mocuj do ściany za pomocą kołków i wkrętów lub kleju montażowego. Wypełnij szczeliny silikonem w kolorze listwy."
        ),
    ]
}
