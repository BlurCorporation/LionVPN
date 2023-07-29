//
//  CoordinatorFactory.swift
//  LionVPN
//
//  Created by Николай Чунихин on 22.07.2023.
//

import SwiftUI

final class CoordinatorFactory {
    
    @ViewBuilder
    func makeOnboarding(diContainer: OnboardingDIContainer) -> some View {
        OnboardingCoordinatorView(diContainer: diContainer)
    }
    
    @ViewBuilder
    func makeAuthCoordinator(diContainer: AuthDIContainer) -> some View {
        AuthCoordinatorView(diContainer: diContainer)
    }
    
    @ViewBuilder
    func makeMainCoordinator(diContainer: MainDIContainer) -> some View {
        MainCoordinatorView(diContainer: diContainer)
    }
    
    @ViewBuilder
    func makeProfileCoordinator(diContainer: ProfileDIContainer) -> some View {
        ProfileCoordinatorView(diContainer: diContainer)
    }
    
    @ViewBuilder
    func makeSubscriptionAuthCoordinator(diContainer: SubscriptionDIContainer) -> some View {
        SubscriptionCoordinatorView(diContainer: diContainer)
    }
    
    @ViewBuilder
    func makePasswordAuthCoordinator(diContainer: PasswordDIContainer) -> some View {
        PasswordCoordinatorView(diContainer: diContainer)
    }
}
