//
//  OnboardingCoordinatorView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI

struct OnboardingCoordinatorView: View {
    
    let diContainer: OnboardingDIContainer
    @ObservedObject var coordinator: OnboardingCoordinator
    
    var body: some View {
        start()
    }
    
    init(diContainer: OnboardingDIContainer) {
        self.diContainer = diContainer
        self.coordinator = OnboardingCoordinator(diContaner: diContainer)
    }

    @ViewBuilder
    func start() -> some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.performOnboardingScene(viewType: .firstOnboarding)
                .navigationDestination(for: OnboardingFlow.self, destination: { page in
                    coordinator.performOnboardingScene(viewType: page)
                })
        }
    }
}
