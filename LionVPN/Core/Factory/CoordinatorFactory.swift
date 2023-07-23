//
//  CoordinatorFactory.swift
//  LionVPN
//
//  Created by Николай Чунихин on 22.07.2023.
//

import SwiftUI

final class CoordinatorFactory {
    
    @ViewBuilder
    func makeOnboarding(dependencies: AppDIContainer) -> some View {
        OnboardingCoordinatorView(diContainer: dependencies)
    }
}
