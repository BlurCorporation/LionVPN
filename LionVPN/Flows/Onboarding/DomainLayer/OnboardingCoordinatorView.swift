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
    
    init(diContainer: OnboardingDIContainer) {
        self.diContainer = diContainer
        self.coordinator = OnboardingCoordinator(diContaner: diContainer)
    }

    var body: some View {
        Text("Onboarding")
    }
}
