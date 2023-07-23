//
//  ManagerFactory.swift
//  LionVPN
//
//  Created by Николай Чунихин on 23.07.2023.
//

import Foundation

protocol ManagerProtocol {}

enum Manager {
    case onboardingManager
    case authManager
    case profileManager
    case subscriptionManager
}

enum ManagerFactory {
    static func makeManager(manager: Manager) -> ManagerProtocol {
        switch manager {
        case .onboardingManager:
            return OnboardingManager()
        case .authManager:
            return AuthManager()
        case .profileManager:
            return ProfileManager()
        case .subscriptionManager:
            return SubscriptionManager()
        }
    }
}
