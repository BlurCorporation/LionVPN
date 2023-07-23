//
//  OnboardingCoordinatorView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI

struct OnboardingCoordinatorView: View {
    
    let diContainer: AppDIContainer
    @ObservedObject var coordinator: OnboardingCoordinator
    
    init(diContainer: AppDIContainer) {
        self.diContainer = diContainer
        self.coordinator = OnboardingCoordinator(onboardingDIContaner: diContainer)
    }

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


