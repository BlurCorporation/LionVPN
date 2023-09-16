//
//  OnboardingManager.swift
//  LionVPN
//
//  Created by Николай Чунихин on 08.09.2023.
//

import SwiftUI

// MARK: - Protocol
/// Протокол менеджера онбординга
protocol OnboardingManagerProtocol {
    
    /// Используется для сохранения информации о прохождении Онбординга
    func setOnboardingCompleted()
    
    /// Используется для получения информации о прохождении Онбординга
    /// - Returns: Пройден ли онбординг
    func isOnboardingComplete() -> Bool
}

// MARK: - Manager
/// Менеджер онбординга
final class OnboardingManager {
    
    /// Переменная в UserDefault, хранящая информацию о прохождении онбординга
    @AppStorage("onboarding") private var isCompleted = false
}

// MARK: - extensions
/// Реализация протокола менеджера онбординга
extension OnboardingManager: OnboardingManagerProtocol {
    
    func setOnboardingCompleted() {
        isCompleted = true
    }
    
    func isOnboardingComplete() -> Bool {
        return isCompleted
    }
}
