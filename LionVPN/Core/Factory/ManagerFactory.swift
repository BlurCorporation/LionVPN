//
//  ManagerFactory.swift
//  LionVPN
//
//  Created by Николай Чунихин on 23.07.2023.
//

import Foundation

protocol ManagerFactoryProtocol {
    func makeOnboardingManager() -> OnboardingManager
    
    func makeAuthManager() -> AuthManager
    
    func makeProfileManager() -> ProfileManager
    
    func makeSubscriptionManager() -> SubscriptionManager
}

final class ManagerFactory {}

extension ManagerFactory: ManagerFactoryProtocol {
    
    func makeOnboardingManager() -> OnboardingManager {
        return OnboardingManager()
    }
    
    func makeAuthManager() -> AuthManager {
        return AuthManager()
    }
    
    func makeProfileManager() -> ProfileManager {
        return ProfileManager()
    }
    
    func makeSubscriptionManager() -> SubscriptionManager {
        return SubscriptionManager()
    }
    
}
