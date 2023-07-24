//
//  DIContainerFactory.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import Foundation

final class DIContainerFactory {
    
    func makeOnboardingDIContainer(diContainer: AppDIContainer) -> OnboardingDIContainer {
        return OnboardingDIContainer(diContaner: diContainer)
    }
    
    func makeAuthDIContainer(diContainer: AppDIContainer) -> AuthDIContainer {
        return AuthDIContainer(diContaner: diContainer)
    }
    
    func makeMainDIContainer(diContainer: AppDIContainer) -> MainDIContainer {
        return MainDIContainer(diContaner: diContainer)
    }
    
    func makeProfileDIContainer(diContainer: AppDIContainer) -> ProfileDIContainer {
        return ProfileDIContainer(diContaner: diContainer)
    }
    
    func makeSubscriptionDIContainer(diContainer: AppDIContainer) -> SubscriptionDIContainer {
        return SubscriptionDIContainer(diContaner: diContainer)
    }
    
    func makePasswordDIContainer(diContainer: AppDIContainer) -> PasswordDIContainer {
        return PasswordDIContainer(diContaner: diContainer)
    }
}
