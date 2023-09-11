//
//  Repository.swift
//  LionVPN
//
//  Created by Николай Чунихин on 08.09.2023.
//

typealias RepositoryProtocol = OnboardingRepositoryProtocol

// MARK: - Repository
/// Репозиторий
final class Repository {
    let onboardingManager: OnboardingManagerProtocol = OnboardingManager()
}

// MARK: - Onboarding

// MARK: Protocol
protocol OnboardingRepositoryProtocol {
    /// Используется для сохранения информации в менеджер о прохождении Онбординга
    func setOnboardingComleted()
    /// Используется для получения информации из менеджера о прохождении Онбординга
    /// - Returns: Пройден ли онбординг
    func isOnboardingComplete() -> Bool
}

// MARK: Extention
extension Repository: OnboardingRepositoryProtocol {
    
    func setOnboardingComleted() {
        self.onboardingManager.setOnboardingCompleted()
    }
    
    func isOnboardingComplete() -> Bool {
        self.onboardingManager.isOnboardingComplete()
    }
}
