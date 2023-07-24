//
//  Repository.swift
//  LionVPN
//
//  Created by Николай Чунихин on 22.07.2023.
//

import SwiftUI


final class Repository {
    
    private let onboardingManager: OnboardingManagerProtocol
    private let authManager: AuthManager
    private let profileManager: ProfileManager
    private let subscriptionManager: SubscriptionManager
    
    init(managerFactory: ManagerFactory) {
        self.onboardingManager = managerFactory.makeOnboardingManager()
        self.authManager = managerFactory.makeAuthManager()
        self.profileManager = managerFactory.makeProfileManager()
        self.subscriptionManager = managerFactory.makeSubscriptionManager()
    }
    
    func checkOnboarding() -> Bool {
        return onboardingManager.checkOnboarding()
    }
    
    func checkAuth() -> Bool {
        return false
    }
}
