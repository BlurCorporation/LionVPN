//
//  OnboardingViewModel.swift
//  LionVPN
//
//  Created by Николай Чунихин on 07.09.2023.
//

import Foundation

// MARK: - Protocol
protocol OnboardingViewModelProtocol: ObservableObject {
    
    /// Индекс массива с моделями данных слоя представления
    var currentIndex: Int { get set }
    /// Массив с моделями данных слоя представления
    var contentModels: [OnboardingContent] { get }
    /// Завершение онбординга
    var finishOnboarding: () -> Void { get set }
    
    /// Обрабатывает нажатия кнопки "Далее/Готово". Сменяет контент или завершает flow
    func nextButtonTapped()
    
    /// Обрабатывает нажатия кнопки "Пропустить". Завершает onboarding flow
    func skipButtonTapped()
}

// MARK: - ViewModel
final class OnboardingViewModel: OnboardingViewModelProtocol {
    
    // MARK: Properties
    @Published var currentIndex: Int = 0
    var contentModels: [OnboardingContent] = Constants.contentModels
    var finishOnboarding: () -> Void  = {}
    
    // MARK: Methods
    func nextButtonTapped() {
        if currentIndex < contentModels.count - 1 {
            currentIndex += 1
        } else {
            self.finishOnboarding()
        }
    }
    
    func skipButtonTapped() {
        self.finishOnboarding()
    }
}

// MARK: - Constants
private enum Constants {
    static let contentModels: [OnboardingContent] = [
        OnboardingContent(
            imageName: "xbox.logo",
            title: "Безопасное соединение",
            description: ("Мы не храним и никому не предаем вашу историю", "вашего нахождения в сети")
        ),
        OnboardingContent(
            imageName: "playstation.logo",
            title: "Полный доступ к информации",
            description: ("Мы поможем получить вам полный доступ к", "информации, которая недоступна в вашей стране")
        ),
        OnboardingContent(
            imageName: "macpro.gen3.fill",
            title: "Быстрое соединение",
            description: ("Использование VPN практически никак не", "повлияет на скорость вашей сети")
        )
    ]
}
