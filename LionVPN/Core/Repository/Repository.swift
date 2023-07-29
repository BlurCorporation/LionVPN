//
//  Repository.swift
//  LionVPN
//
//  Created by Николай Чунихин on 22.07.2023.
//

import SwiftUI

typealias RepositoryProtocol = RepositoryOnboardingProtocol & RepositoryAuthProtocol & OnboardingCompletedProtocol

protocol OnboardingCompletedProtocol {
    var onboardingComplete: () -> Void { get set }
}

protocol RepositoryOnboardingProtocol {
    
    func checkOnboarding() -> Bool
    
    func setOnboardingCompleted()
}

protocol RepositoryAuthProtocol {
    
    func checkAuth() -> Bool
}

final class Repository: OnboardingCompletedProtocol {
    
    var onboardingComplete: () -> Void = {}
    
    private let onboardingManager: OnboardingManagerProtocol
    private let authManager: AuthManagerPrototcol
    private let profileManager: ProfileManagerProtocol
    private let subscriptionManager: SubscriptionManagerProtocol
    
    init(managerFactory: ManagerFactory) {
        self.onboardingManager = managerFactory.makeOnboardingManager()
        self.authManager = managerFactory.makeAuthManager()
        self.profileManager = managerFactory.makeProfileManager()
        self.subscriptionManager = managerFactory.makeSubscriptionManager()
    }
}

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
