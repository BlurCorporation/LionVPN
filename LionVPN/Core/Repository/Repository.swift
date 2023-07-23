//
//  Repository.swift
//  LionVPN
//
//  Created by Николай Чунихин on 22.07.2023.
//

import Foundation

protocol onboardingDataProtocol {
    
}

final class Repository {
    private let onboardingManager = ManagerFactory.makeManager(manager: .onboardingManager)
    private let authManager = ManagerFactory.makeManager(manager: .authManager)
    private let profileManager = ManagerFactory.makeManager(manager: .profileManager)
    private let subscriptionManager = ManagerFactory.makeManager(manager: .subscriptionManager)
}
