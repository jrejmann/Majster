//
//  PaintingGuides.swift
//  Majster
//

import SwiftUI

extension AppData {

    static let paintingGuides: [Guide] = [

        // MARK: 1. Primer - PREREQUISITE for painting
        Guide(
            id: idGruntowanieScian,
            title: "Gruntowanie ścian i sufitów",
            categoryId: "painting",
            difficulty: .amateur,
            duration: .halfDay,
            gradientColors: [.gray, .blue],
            description: "Podstawa każdego malowania. Dobry grunt wyrównuje chłonność podłoża i sprawia, że farba kryje równomiernie. Bez gruntu farba może odpadać płatami lub tworzyć nierówne przebarwienia.",
            requirements: [
                Requirement(name: "Grunt uniwersalny głęboko penetrujący", type: .material, icon: "drop.fill"),
                Requirement(name: "Wałek 18 cm (włosie 10 mm)", type: .tool, icon: "paintbrush.fill"),
                Requirement(name: "Pędzel ławkowiec 10 cm", type: .tool, icon: "paintbrush"),
                Requirement(name: "Taca malarska", type: .tool, icon: "square.fill"),
                Requirement(name: "Folia ochronna", type: .material, icon: "rectangle.fill"),
            ],
            steps: [
                GuideStep(
                    order: 1,
                    title: "Zabezpieczenie pomieszczenia",
                    content: "Przykryj meble i podłogę folią malarską. Zakleij listwy, gniazdka i włączniki taśmą malarską.",
                    proTip: "Użyj taśmy malarskiej Easy Mask — klei się do każdej powierzchni i nie zostawia śladów nawet po kilku dniach."
                ),
                GuideStep(
                    order: 2,
                    title: "Odkurzenie i oczyszczenie podłoża",
                    content: "Usuń pył, tłuste plamy i luźne fragmenty tynku. Odtłuść powierzchnię wilgotną szmatką z odrobiną płynu do naczyń, poczekaj aż wyschnie.",
                    mediaUrl: "img_cleaning_wall"
                ),
                GuideStep(
                    order: 3,
                    title: "Nakładanie gruntu",
                    content: "Rozcieńcz grunt zgodnie z instrukcją producenta (zwykle 1:5 z wodą na pierwszą warstwę). Nakładaj wałkiem ruchami \"W\", a pędzlem wykańczaj narożniki i krawędzie.",
                    mediaUrl: "video_priming",
                    proTip: "Grunt nakładaj obficie — podłoże powinno być nasycone, nie tylko zwilżone. To klucz do równomiernego krycia farby."
                ),
                GuideStep(
                    order: 4,
                    title: "Czas schnięcia i kontrola",
                    content: "Odczekaj minimum 4 godziny (lub zgodnie z kartą techniczną). Zagruntowana powierzchnia powinna być jednolicie matowa — miejsca błyszczące świadczą o niedostatecznym nasyceniu.",
                    proTip: "Jeśli ściana wciąż wchłania grunt po 15 minutach, nałóż drugą warstwę — to szczególnie ważne przy nowych tynkach."
                ),
            ]
        ),

        // MARK: 2. Ceiling Painting - requires primer
        Guide(
            id: idMalowanieSufitu,
            title: "Malowanie sufitu bez smug",
            categoryId: "painting",
            difficulty: .intermediate,
            duration: .fullDay,
            gradientColors: [.blue, .cyan],
            description: "Malowanie sufitu to jedno z tych zadań, które łatwo zepsuć przez nieestetyczne smugi i zacieki. Kluczem do sukcesu jest odpowiednie przygotowanie powierzchni, właściwy wałek i technika mokra krawędź.",
            requirements: [
                Requirement(name: "Farba lateksowa biała (matowa)", type: .material, icon: "drop.fill"),
                Requirement(name: "Wałek mikrofibra 18 cm", type: .tool, icon: "paintbrush.fill"),
                Requirement(name: "Kij teleskopowy 1–2 m", type: .tool, icon: "line.diagonal"),
                Requirement(name: "Pędzel ławkowiec 10 cm", type: .tool, icon: "paintbrush"),
                Requirement(name: "Taśma malarska Gold", type: .material, icon: "rectangle.fill"),
                Requirement(name: "Taca malarska z kratką", type: .tool, icon: "square.grid.2x2"),
            ],
            steps: [
                GuideStep(
                    order: 1,
                    title: "Zabezpieczenie krawędzi",
                    content: "Oklej styki sufitu ze ścianami taśmą malarską Gold. Naklej folię ochronną na ściany tuż pod taśmą.",
                    proTip: "Dociśnij krawędź taśmy kartą kredytową — uniemożliwi to podciekanie farby i da idealnie prostą linię."
                ),
                GuideStep(
                    order: 2,
                    title: "Rozcieńczenie pierwszej warstwy",
                    content: "Pierwszą warstwę farby rozcieńcz 5–10% wodą. Dzięki temu lepiej wniknie w zagruntowaną powierzchnię i stanowi doskonałą bazę dla kolejnych warstw.",
                    mediaUrl: "img_paint_mixing"
                ),
                GuideStep(
                    order: 3,
                    title: "Malowanie narożników pędzlem",
                    content: "Najpierw pędzlem ławkowcem pomaluj 5–8 cm przy wszystkich krawędziach sufitu. Pracuj małymi odcinkami, żeby krawędź nie zdążyła wyschnąć przed wałkiem.",
                    proTip: "Pracuj w partiach ok. 1 metr bieżący — maluj krawędź pędzlem, od razu „zawijaj\" wałkiem. Mokra krawędź eliminuje smugi."
                ),
                GuideStep(
                    order: 4,
                    title: "Malowanie wałkiem od okna",
                    content: "Zawsze maluj w stronę głównego źródła światła (okna). Nanoś farbę ruchami \"W\" lub \"M\" na odcinku ok. 50×50 cm, następnie wyrównaj równoległymi pociągnięciami.",
                    mediaUrl: "video_ceiling_painting",
                    proTip: "Nie wracaj do zaschniętej farby — to główna przyczyna smug. Jeśli musisz poprawić, czekaj aż pierwsza warstwa całkowicie wyschnie."
                ),
                GuideStep(
                    order: 5,
                    title: "Druga warstwa i finisz",
                    content: "Po 4–6 godzinach nałóż drugą warstwę bez rozcieńczania. Maluj prostopadle do kierunku pierwszej warstwy. Delikatnie zdejmij taśmę malarską jeszcze przy wilgotnej farbie.",
                    mediaUrl: "img_second_coat"
                ),
            ],
            prerequisiteIds: [idGruntowanieScian]
        ),

        // MARK: 3. Wall Preparation for Putty
        Guide(
            id: idPrzygotowanieScian,
            title: "Przygotowanie ścian pod gładź",
            categoryId: "painting",
            difficulty: .intermediate,
            duration: .weekend,
            gradientColors: [.blue, .purple],
            description: "Gładź szpachlowa nadaje ścianom idealnie gładką powierzchnię, gotową pod malowanie lub tapetowanie. Prawidłowe przygotowanie podłoża decyduje o trwałości i wyglądzie końcowego efektu.",
            requirements: [
                Requirement(name: "Gładź szpachlowa wykończeniowa", type: .material, icon: "drop.fill"),
                Requirement(name: "Paca stalowa 40–60 cm", type: .tool, icon: "rectangle.fill"),
                Requirement(name: "Paca narożnikowa", type: .tool, icon: "angle"),
                Requirement(name: "Szlifierka oscylacyjna lub papier P120–180", type: .tool, icon: "rotate.right"),
                Requirement(name: "Grunt głęboko penetrujący", type: .material, icon: "drop.circle"),
                Requirement(name: "Lampa halogenowa boczna (do kontroli)", type: .tool, icon: "lightbulb.fill"),
            ],
            steps: [
                GuideStep(
                    order: 1,
                    title: "Oczyszczenie i gruntowanie",
                    content: "Usuń stare, łuszczące się powłoki. Zagruntuj ściany gruntem głęboko penetrującym i odczekaj czas schnięcia zgodnie z kartą techniczną.",
                    proTip: "Sprawdź przyczepność starego tynku — jeśli przy opukaniu wydaje głuchy dźwięk, fragment trzeba skuć i uzupełnić."
                ),
                GuideStep(
                    order: 2,
                    title: "Pierwsza warstwa gładzi",
                    content: "Nałóż pierwszą warstwę gładzi pacą stalową pod kątem 30°. Grubość warstwy nie powinna przekraczać 2 mm. Wypełniaj ubytki i wyrównuj nierówności.",
                    mediaUrl: "img_first_coat_plaster"
                ),
                GuideStep(
                    order: 3,
                    title: "Szlifowanie i poprawki",
                    content: "Po całkowitym wyschnięciu (min. 24h) przeszlifuj powierzchnię papierem P120. Używaj lampy halogenowej trzymanej pod kątem do ściany — ujawni wszelkie nierówności.",
                    proTip: "Szlif kontrolny rób zawsze przy bocznym oświetleniu. Lampa halogenowa pokaże każdą rysę, której nie widać przy normalnym świetle."
                ),
                GuideStep(
                    order: 4,
                    title: "Druga warstwa i wykończenie",
                    content: "Nałóż drugą, cieńszą warstwę gładzi (1 mm) w poprzek pierwszej. Po wyschnięciu szlifuj papierem P180 do idealnej gładkości. Zetrzyj pył wilgotną ściereczką i zagruntuj przed malowaniem.",
                    mediaUrl: "video_finish_plaster"
                ),
            ],
            prerequisiteIds: [idGruntowanieScian]
        ),
    ]
}
