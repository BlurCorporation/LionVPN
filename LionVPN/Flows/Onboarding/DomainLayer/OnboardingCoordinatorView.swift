//
//  OnboardingCoordinatorView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 08.09.2023.
//

import SwiftUI

// MARK: - Coordinator View
/// Представления onboarding координатора
struct OnboardingCoordinatorView<Coordinator>: View where Coordinator: OnboardingCoordinatorProtocol {
    
    // MARK: Properties
    /// Координатор
    @ObservedObject var coordinator: Coordinator
    
    // MARK: Body
    var body: some View {
        NavigationStack(
            path: $coordinator.path
        ) {
            coordinator.buildPage(.onboarding)
                .navigationDestination(for: OnboardingPage.self) { page in
                    coordinator.buildPage(page)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.buildSheet(sheet)
                }
                .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                    coordinator.buildFullScreenCover(fullScreenCover)
                }
        }
    }
}
