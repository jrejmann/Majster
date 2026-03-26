//
//  StepRow.swift
//  Majster
//
//  Created by Jakub Rejmann on 25/03/2026.
//

import SwiftUI

struct StepRow: View {
    let step: GuideStep
    let isLast: Bool

    @State private var showProTip = false

    var body: some View {
        HStack(alignment: .top, spacing: 14) {
            // Timeline indicator
            VStack(spacing: 0) {
                ZStack {
                    Circle()
                        .fill(Color.accentColor)
                        .frame(width: 30, height: 30)
                    Text("\(step.order)")
                        .font(.footnote.bold())
                        .foregroundColor(.white)
                }
                if !isLast {
                    Rectangle()
                        .fill(Color(.separator))
                        .frame(width: 2)
                        .frame(maxHeight: .infinity)
                        .padding(.top, 4)
                }
            }
            .frame(width: 30)

            // Content
            VStack(alignment: .leading, spacing: 10) {
                HStack(alignment: .top) {
                    Text(step.title)
                        .font(.headline)
                    Spacer()
                    if step.proTip != nil {
                        Button {
                            showProTip = true
                        } label: {
                            Image(systemName: "lightbulb.fill")
                                .foregroundColor(.yellow)
                                .font(.subheadline)
                                .padding(6)
                                .background(Color.yellow.opacity(0.15))
                                .clipShape(Circle())
                        }
                        .popover(isPresented: $showProTip) {
                            ProTipPopover(tip: step.proTip!)
                                .presentationCompactAdaptation(.none)
                        }
                    }
                }

                Text(step.content)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineSpacing(4)

                // Media placeholder
                if step.mediaUrl != nil {
                    MediaPlaceholder()
                }
            }
            .padding(.bottom, isLast ? 0 : 20)
        }
        .padding(.vertical, isLast ? 0 : 4)
    }
}

#Preview("With ProTip") {
    VStack(spacing: 0) {
        StepRow(
            step: GuideStep(
                order: 1,
                title: "Przygotowanie powierzchni",
                content: "Dokładnie oczyść ściany z kurzu i zabrudzeń. Użyj wilgotnej ściereczki i poczekaj aż powierzchnia wyschnie.",
                proTip: "Jeśli ściana jest bardzo brudna, użyj roztworu wody z detergentem."
            ),
            isLast: false
        )
        StepRow(
            step: GuideStep(
                order: 2,
                title: "Nakładanie pierwszej warstwy",
                content: "Nanieś pierwszą warstwę farby równomiernie, używając wałka. Maluj w kierunku od okna do drzwi.",
                mediaUrl: "placeholder.jpg"
            ),
            isLast: true
        )
    }
    .padding()
    .background(Color(.systemGroupedBackground))
}

#Preview("Simple Step") {
    StepRow(
        step: GuideStep(
            order: 3,
            title: "Wykończenie",
            content: "Sprawdź równomierność pokrycia i w razie potrzeby nałóż drugą warstwę."
        ),
        isLast: true
    )
    .padding()
    .background(Color(.systemGroupedBackground))
}
