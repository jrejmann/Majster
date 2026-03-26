//
//  FlooringGuides.swift
//  Majster
//

import SwiftUI

extension AppData {

    static let flooringGuides: [Guide] = [

        // MARK: 1. Laminate Panel Installation
        Guide(
            id: idUkladaniePaneli,
            title: "Układanie paneli laminowanych",
            categoryId: "flooring",
            difficulty: .intermediate,
            duration: .fullDay,
            gradientColors: [.orange, .brown],
            description: "Panele laminowane to popularny i stosunkowo łatwy w montażu sposób na odnowienie podłogi. Efekt końcowy w dużej mierze zależy od staranności przygotowania podłoża i zachowania właściwych dylatacji.",
            requirements: [
                Requirement(name: "Panele laminowane AC4+", type: .material, icon: "square.fill"),
                Requirement(name: "Podkład podłogowy (pianka 3 mm)", type: .material, icon: "rectangle.fill"),
                Requirement(name: "Kliny dystansowe 8 mm", type: .tool, icon: "square.and.line.vertical.and.square"),
                Requirement(name: "Klocek montażowy i młotek gumowy", type: .tool, icon: "hammer.fill"),
                Requirement(name: "Piła ręczna lub wyrzynarka", type: .tool, icon: "scissors"),
                Requirement(name: "Miara i ołówek", type: .tool, icon: "ruler"),
            ],
            steps: [
                GuideStep(
                    order: 1,
                    title: "Aklimatyzacja paneli",
                    content: "Pozostaw panele w pomieszczeniu przez minimum 48 godzin w pozycji poziomej. Temperatura powinna wynosić 18–22°C, wilgotność 45–65%.",
                    proTip: "Nie kładź paneli na podłodze pionowo ani w stosach — mogą się wypaczyć jeszcze przed montażem."
                ),
                GuideStep(
                    order: 2,
                    title: "Kontrola i wyrównanie podłoża",
                    content: "Podłoże musi być równe (odchyłka max 2 mm na 2 m), suche i czyste. Nierówności wyrównaj masą samopoziomującą, odczekaj czas schnięcia.",
                    mediaUrl: "img_floor_leveling",
                    proTip: "Sprawdź wilgotność betonowej wylewki miernikiem — maks. 2% CM. Nadmierna wilgoć zniszczy panele w ciągu sezonu."
                ),
                GuideStep(
                    order: 3,
                    title: "Rozłożenie podkładu",
                    content: "Rozłóż podkład piankowy prostopadle do kierunku układania paneli. Łącz arkusze na zakład 5 cm i sklejaj taśmą. Nie wywijaj podkładu na ściany.",
                    mediaUrl: "img_underlay"
                ),
                GuideStep(
                    order: 4,
                    title: "Układanie pierwszego rzędu",
                    content: "Zacznij od lewej strony pomieszczenia, piórkiem do ściany. Wstaw kliny dystansowe 8 mm przy każdej ścianie. Pierwszy i ostatni rząd często wymagają cięcia wzdłużnego.",
                    proTip: "Zaplanuj układ tak, żeby ostatni rząd miał min. 5 cm szerokości. Wygląda znacznie lepiej niż wąski pasek przy ścianie."
                ),
                GuideStep(
                    order: 5,
                    title: "Montaż kolejnych rzędów",
                    content: "Łącz panele pod kątem 30°, dociskając do zatrzaśnięcia. Przesuwaj spoiny o min. 30 cm między rzędami (układ cegiełki). Używaj klocka montażowego — nigdy nie bij bezpośrednio w zamek.",
                    mediaUrl: "video_panel_click"
                ),
                GuideStep(
                    order: 6,
                    title: "Wykończenie i listwy",
                    content: "Usuń kliny dystansowe. Zamontuj listwy przypodłogowe mocując je do ściany (nie do podłogi!). W drzwiach zastosuj progi przejściowe.",
                    proTip: "Listwy montuj z 1 mm luzu — panel musi swobodnie pracować pod listwą. Zbyt ciasno dokręcona listwa blokuje dylatację."
                ),
            ]
        ),

        // MARK: 2. Baseboard Installation - requires floor installation
        Guide(
            id: idListwyPrzypadlowe,
            title: "Montaż listew przypodłogowych",
            categoryId: "flooring",
            difficulty: .easy,
            duration: .halfDay,
            gradientColors: [.orange, .yellow],
            description: "Listwy przypodłogowe to ostatni akcent wykończenia podłogi — zakrywają szczelinę dylatacyjną i nadają wnętrzu schludny wygląd. Ich montaż jest prosty, ale wymaga precyzyjnego cięcia narożników.",
            requirements: [
                Requirement(name: "Listwy przypodłogowe MDF lub PVC", type: .material, icon: "rectangle.fill"),
                Requirement(name: "Ukośnica (lub skrzynka uciosowa)", type: .tool, icon: "scissors"),
                Requirement(name: "Klej montażowy (np. Stix lub Soudal)", type: .material, icon: "drop.fill"),
                Requirement(name: "Pistolet do kleju", type: .tool, icon: "wand.and.rays"),
                Requirement(name: "Kołki i wkręty 35 mm (opcjonalnie)", type: .tool, icon: "screwdriver.fill"),
                Requirement(name: "Silikon dekoracyjny w kolorze listwy", type: .material, icon: "paintbrush.fill"),
            ],
            steps: [
                GuideStep(
                    order: 1,
                    title: "Pomiar i planowanie",
                    content: "Zmierz obwód pomieszczenia i dolicz 10% na odpady z cięć. Zaplanuj kolejność montażu: zacznij od ściany naprzeciwko drzwi (najbardziej widoczna).",
                    proTip: "Narysuj rzut pomieszczenia na kartce i zaznacz narożniki wewnętrzne (135°) i zewnętrzne (45°). To pomoże uniknąć błędów przy cięciu."
                ),
                GuideStep(
                    order: 2,
                    title: "Cięcie narożników",
                    content: "Narożniki wewnętrzne: dwie listwy pod kątem 45° do środka. Narożniki zewnętrzne: pod kątem 45° na zewnątrz. Zawsze rób próbne cięcie na odpadku.",
                    mediaUrl: "img_corner_cutting",
                    proTip: "Jeśli ściany nie są idealnie prostopadłe (a rzadko są!), zmierz rzeczywisty kąt kątomierzem i podziel na pół — to da Ci właściwy kąt cięcia."
                ),
                GuideStep(
                    order: 3,
                    title: "Mocowanie do ściany",
                    content: "Nałóż klej montażowy wężykiem na tylną stronę listwy (co 30 cm). Dociśnij do ściany i przytrzymaj 30 sekund. W przypadku tynku gipsowego możesz dodatkowo użyć kołków.",
                    proTip: "Nie mocuj listwy do podłogi — panele muszą swobodnie pracować (rozszerzać się i kurczyć) pod listwą."
                ),
                GuideStep(
                    order: 4,
                    title: "Wykończenie spoinami",
                    content: "Wypełnij szczeliny między listwami silikonem dekoracyjnym w kolorze listwy. Wyrównaj wilgotnym palcem lub łopatką. Usuń nadmiar przed zastygnięciem.",
                    mediaUrl: "img_silicone_finish"
                ),
            ],
            prerequisiteIds: [idUkladaniePaneli]
        ),

        // MARK: 3. LVT Vinyl Panels
        Guide(
            id: idPaneleWinylowe,
            title: "Układanie paneli winylowych (LVT)",
            categoryId: "flooring",
            difficulty: .easy,
            duration: .fullDay,
            gradientColors: [.orange, .red],
            description: "Panele winylowe (LVT) to trwała i wodoodporna alternatywa dla laminatu. Układa się je metodą click bez kleju, co sprawia, że montaż jest szybki i czysty. Idealne do łazienek i kuchni.",
            requirements: [
                Requirement(name: "Panele winylowe LVT click", type: .material, icon: "square.fill"),
                Requirement(name: "Kliny dystansowe 5 mm", type: .tool, icon: "square.and.line.vertical.and.square"),
                Requirement(name: "Nóż do paneli winylowych lub wyrzynarka", type: .tool, icon: "scissors"),
                Requirement(name: "Linijka stalowa 60 cm", type: .tool, icon: "ruler"),
                Requirement(name: "Wałek dociskowy", type: .tool, icon: "circle.fill"),
            ],
            steps: [
                GuideStep(
                    order: 1,
                    title: "Przygotowanie podłoża",
                    content: "Podłoże musi być równe, suche i czyste. LVT nie wymaga podkładu — układa się bezpośrednio na wylewce lub istniejącej twardej podłodze.",
                    proTip: "LVT można układać na starych płytkach — oszczędzasz czas i bałagan związany z ich skuciem. Upewnij się tylko, że żadna nie jest odspojona."
                ),
                GuideStep(
                    order: 2,
                    title: "Zaplanowanie układu",
                    content: "Zacznij od lewego górnego narożnika. Zaplanuj układ tak, żeby ostatni rząd przy drzwiach miał min. 5 cm szerokości.",
                    mediaUrl: "img_lvt_layout"
                ),
                GuideStep(
                    order: 3,
                    title: "Cięcie i układanie",
                    content: "LVT tnie się nożem i linijką (naciśnij mocno i złam). Układaj panele pod kątem 30°, zatrzaskując zamek. Zachowaj 5 mm dylatacji przy ścianach.",
                    mediaUrl: "video_lvt_click",
                    proTip: "Przy trudnych kształtach (rury, futryny) zrób szablon z kartonu — zaoszczędzisz dużo materiału."
                ),
                GuideStep(
                    order: 4,
                    title: "Dociskanie i progi",
                    content: "Przejdź wałkiem dociskowym po każdym ułożonym rzędzie. Na końcu zamontuj progi przejściowe w drzwiach i listwy przypodłogowe.",
                    mediaUrl: "img_lvt_roller"
                ),
            ]
        ),
    ]
}
