//
//  ManagerFactory.swift
//  LionVPN
//
//  Created by Николай Чунихин on 23.07.2023.
//

import Foundation

final class ManagerFactory {
    
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
