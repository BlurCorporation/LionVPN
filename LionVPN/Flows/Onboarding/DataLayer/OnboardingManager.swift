//
//  OnboardingManager.swift
//  LionVPN
//
//  Created by Николай Чунихин on 22.07.2023.
//

import SwiftUI

protocol OnboardingManagerProtocol {
    func setOnboardingCompleted()
    func checkOnboarding() -> Bool
}

final class OnboardingManager {
    @AppStorage("onboarding") var isCompleted = false
}

extension OnboardingManager: OnboardingManagerProtocol {
    func setOnboardingCompleted() {
        isCompleted = true
    }
    
    func checkOnboarding() -> Bool {
        return isCompleted
    }
}
