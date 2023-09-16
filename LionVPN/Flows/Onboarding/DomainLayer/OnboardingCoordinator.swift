//
//  OnboardingCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 08.09.2023.
//

import SwiftUI

// MARK: - Views
/// Перечисление страниц, которые может открыть координатор
enum OnboardingPage: String, Identifiable {
    
    /// Онбординг
    case onboarding
    
    var id: String {
        self.rawValue
    }
}

// MARK: - Protocol
/// Протокол координатора онбординга
protocol OnboardingCoordinatorProtocol: ObservableObject {
    /// Путь хранит информацию о всех дочерних открытых слоях представления
    var path: NavigationPath { get set }
    
    /// Хранит информацию о действующем слое представления типа sheet
    var sheet: OnboardingPage? { get set }
    
    /// Хранит информацию о действующем слое представления типа fullScreenCover
    var fullScreenCover: OnboardingPage? { get set }
    
    /// Используется для запуска слоя представления типа page
    /// - Parameter page: страница, которую должен представить координатор
    func push(_ page: OnboardingPage)
    
    /// Используется для запуска слоя представления типа sheet
    /// - Parameter sheet: страница, которую должен представить координатор
    func presentSheet(_ sheet: OnboardingPage)
    
    /// Используется для запуска слоя представления типа fullScreenCover
    /// - Parameter fullScreenCover: страница, которую должен представить координатор
    func presentFullScreenCover(_ fullScreenCover: OnboardingPage)
    
    /// Убирает последний запущеный слой представления типа
    func pop()
    
    /// Возвращается к корневому представлению, убирая все слои после него
    func popToRoot()
    
    /// Убирает запущеный слой представления типа sheet
    func dismissSheet()
    
    /// Убирает запущеный слой представления типа fullScreenCover
    func dismissFullScreenCover()
    
    /// Используется для сборки слоя представления типа page
    /// - Parameter page: страница, которую должен собрать координатор
    /// - Returns: слой представления
    func buildPage(_ page: OnboardingPage) -> AnyView
    
    /// Используется для сборки слоя представления типа sheet
    /// - Parameter sheet: страница, которую должен собрать координатор
    /// - Returns: слой представления
    func buildSheet(_ sheet: OnboardingPage) -> AnyView
    
    /// Используется для сборки слоя представления типа fullScreenCover
    /// - Parameter fullScreenCover: страница, которую должен собрать координатор
    /// - Returns: слой представления
    func buildFullScreenCover(_ fullScreenCover: OnboardingPage) -> AnyView
}

// MARK: - Coordinator
/// Координатор онбординга
final class OnboardingCoordinator: OnboardingCoordinatorProtocol {
    // MARK: Properties
    @Published var path: NavigationPath = NavigationPath()
    @Published var sheet: OnboardingPage?
    @Published var fullScreenCover: OnboardingPage?
    var onFinish: (() -> Void) = {}
    
    // MARK: Private properties
    private var repository: OnboardingRepositoryProtocol
    
    // MARK: Init
    /// Инициализатор
    /// - Parameter repository: репозиторий
    init(
        repository: OnboardingRepositoryProtocol
    ) {
        self.repository = repository
    }
    
    // MARK: Navigation methods
    func push(_ page: OnboardingPage) {
        path.append(page)
    }
    
    func presentSheet(_ sheet: OnboardingPage) {
        self.sheet = sheet
    }
    
    func presentFullScreenCover(_ fullScreenCover: OnboardingPage) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        self.path.removeLast()
    }
    
    func popToRoot() {
        self.path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
    // MARK: Assembling the view
    func buildPage(_ page: OnboardingPage) -> AnyView {
        switch page {
        case .onboarding:
            let viewModel = OnboardingViewModel()
            viewModel.finishOnboarding = { [weak self] in
                guard let self = self else { return }
                self.repository.setOnboardingComleted()
                self.onFinish()
            }
            let view = OnboardingView(
                viewModel: viewModel
            )
            return AnyView(view)
        }
    }
    
    func buildSheet(_ sheet: OnboardingPage) -> AnyView {
        switch sheet {
        case .onboarding:
            let viewModel = OnboardingViewModel()
            viewModel.finishOnboarding = { [weak self] in
                guard let self = self else { return }
                self.repository.setOnboardingComleted()
                self.onFinish()
            }
            let view = OnboardingView(
                viewModel: viewModel
            )
            return AnyView(view)
        }
    }
    
    func buildFullScreenCover(_ fullScreenCover: OnboardingPage) -> AnyView {
        switch fullScreenCover {
        case .onboarding:
            let viewModel = OnboardingViewModel()
            viewModel.finishOnboarding = { [weak self] in
                guard let self = self else { return }
                self.repository.setOnboardingComleted()
                self.onFinish()
            }
            let view = OnboardingView(
                viewModel: viewModel
            )
            return AnyView(view)
        }
    }
}
