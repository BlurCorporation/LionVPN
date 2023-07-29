//
//  DIContainerFactory.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import Foundation

protocol DIContainerFactoryProtocol {
    
    func makeOnboardingDIContainer(diContainer: AppDIContainer) -> OnboardingDIContainer
    
    func makeAuthDIContainer(diContainer: AppDIContainer) -> AuthDIContainer
    
    func makeMainDIContainer(diContainer: AppDIContainer) -> MainDIContainer
    
    func makeProfileDIContainer(diContainer: AppDIContainer) -> ProfileDIContainer
    
    func makeSubscriptionDIContainer(diContainer: AppDIContainer) -> SubscriptionDIContainer
    
    func makePasswordDIContainer(diContainer: AppDIContainer) -> PasswordDIContainer
}

final class DIContainerFactory {}

extension DIContainerFactory: DIContainerFactoryProtocol {
    
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
