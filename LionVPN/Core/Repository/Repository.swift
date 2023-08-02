//
//  Repository.swift
//  LionVPN
//
//  Created by Николай Чунихин on 22.07.2023.
//

import SwiftUI

typealias RepositoryProtocol = RepositoryOnboarding & RepositoryAuthProtocol


typealias RepositoryOnboarding = OnboardingCompletedProtocol & RepositoryOnboardingProtocol
typealias RepositoryAuth = RepositoryAuthProtocol

// MARK: - Onboarding Protocols
protocol OnboardingCompletedProtocol {
    var onboardingComplete: () -> Void { get set }
}

protocol RepositoryOnboardingProtocol {
    
    func checkOnboarding() -> Bool
    
    func setOnboardingCompleted()
}

// MARK: - Auth Protocols
protocol RepositoryAuthProtocol {
    
    func checkAuth() -> Bool
}

final class Repository: OnboardingCompletedProtocol {
    
    var onboardingComplete: () -> Void = {}
    
    private let onboardingManager: OnboardingManagerProtocol
    private let authManager: AuthManagerPrototcol
    private let profileManager: ProfileManagerProtocol
    private let subscriptionManager: SubscriptionManagerProtocol
    
    init(managerFactory: ManagerFactoryProtocol) {
        self.onboardingManager = managerFactory.makeOnboardingManager()
        self.authManager = managerFactory.makeAuthManager()
        self.profileManager = managerFactory.makeProfileManager()
        self.subscriptionManager = managerFactory.makeSubscriptionManager()
    }
}


// MARK: - Extensions
extension Repository: RepositoryOnboardingProtocol {
    
    func checkOnboarding() -> Bool {
        return onboardingManager.checkOnboarding()
    }
    
    func setOnboardingCompleted() {
        onboardingManager.setOnboardingCompleted()
        onboardingComplete()
    }
}

extension Repository: RepositoryAuthProtocol {
    func checkAuth() -> Bool {
        return false
    }
}
