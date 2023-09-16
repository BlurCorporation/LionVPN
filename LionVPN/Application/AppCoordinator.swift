//
//  AppCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 11.09.2023.
//

import SwiftUI

// MARK: - Flows
/// Перечисление flows координатора
enum AppFlow: String, Identifiable {
    
    /// flow онбординга
    case onboarding
    /// flow авторизации
    case authorization
    /// flow главного экрана
    case main
    
    var id: String {
        self.rawValue
    }
}

// MARK: - Protocol
/// Протокол координатора приложения
protocol AppCoordinatorProtocol: ObservableObject {
    
    /// Путь хранит информацию о всех дочерних открытых слоях представления
    var path: NavigationPath { get set }
    
    /// Хранит информацию о действующем слое представления типа sheet
    var sheet: AppFlow? { get set }
    
    /// Хранит информацию о действующем слое представления типа fullScreenCover
    var fullScreenCover: AppFlow? { get set }
    
    /// Определяет flow координатора
    /// - Returns: flow
    func start() -> AppFlow
    
    /// Используется для запуска слоя представления типа page
    /// - Parameter page: flow, которое должен представить координатор
    func push(_ page: AppFlow)
    
    /// Используется для запуска слоя представления типа sheet
    /// - Parameter sheet: flow, которое должен представить координатор
    func presentSheet(_ sheet: AppFlow)
    
    /// Используется для запуска слоя представления типа fullScreenCover
    /// - Parameter fullScreenCover: fullScreenCover flow, которое должен представить координатор
    func presentFullScreenCover(_ fullScreenCover: AppFlow)
    
    /// Убирает последний запущеный слой представления типа
    func pop()
    
    /// Возвращается к корневому представлению, убирая все слои после него
    func popToRoot()
        
    /// Убирает запущеный слой представления типа sheet
    func dismissSheet()
    
    /// Убирает запущеный слой представления типа fullScreenCover
    func dismissFullScreenCover()
    
    /// Используется для сборки слоя представления типа page
    /// - Parameter page: flow, которое должен собрать координатор
    /// - Returns: слой представления flow
    func buildPage(_ page: AppFlow) -> AnyView
    
    /// Используется для сборки слоя представления типа sheet
    /// - Parameter sheet: flow, которое должен собрать координатор
    /// - Returns: слой представления flow
    func buildSheet(_ sheet: AppFlow) -> AnyView
    
    /// Используется для сборки слоя представления типа fullScreenCover
    /// - Parameter fullScreenCover: flow, которое должен собрать координатор
    /// - Returns: слой представления flow
    func buildFullScreenCover(_ fullScreenCover: AppFlow) -> AnyView
}

// MARK: - Coordinator
/// Координатор приложения
final class AppCoordinator: AppCoordinatorProtocol {
    
    // MARK: Properties
    @Published var path = NavigationPath()
    @Published var sheet: AppFlow?
    @Published var fullScreenCover: AppFlow?
    
    // MARK: Private properties
    private let repository: RepositoryProtocol
    
    // MARK: Init
    /// Инициализатор
    /// - Parameter repository: репозиторий
    init(
        repository: RepositoryProtocol
    ) {
        self.repository = repository
    }
    
    // MARK: Navigation methods
    func start() -> AppFlow {
        if repository.isOnboardingComplete() {
            return .authorization
        } else {
            return .onboarding
        }
    }
   
    func push(_ page: AppFlow) {
        path.append(page)
    }
    
    func presentSheet(_ sheet: AppFlow) {
        self.sheet = sheet
    }
    
    func presentFullScreenCover(_ fullScreenCover: AppFlow) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
     
    // MARK: Assembling the view
    func buildPage(_ page: AppFlow) -> AnyView {
        switch page {
        case .onboarding:
            let coordinator = OnboardingCoordinator(repository: repository)
            coordinator.onFinish = { [weak self] in
                guard let self = self else { return }
                self.popToRoot()
            }
            let coordinatorView = OnboardingCoordinatorView(
                coordinator: coordinator
            )
            return AnyView(coordinatorView)
        case .authorization:
            return AnyView(Text("Auth"))
        case .main:
            return AnyView(Text("Main"))
        }
    }
    
    func buildSheet(_ sheet: AppFlow) -> AnyView {
        switch sheet {
        case .onboarding:
            let coordinator = OnboardingCoordinator(repository: repository)
            coordinator.onFinish = { [weak self] in
                guard let self = self else { return }
                self.dismissSheet()
                self.presentFullScreenCover(.authorization)
            }
            let coordinatorView = OnboardingCoordinatorView(
                coordinator: coordinator
            )
            return AnyView(coordinatorView)
        case .authorization:
            return AnyView(Text("Auth"))
        case .main:
            return AnyView(Text("Main"))
        }
    }
    
    func buildFullScreenCover(_ fullScreenCover: AppFlow) -> AnyView {
        switch fullScreenCover {
        case .onboarding:
            let coordinator = OnboardingCoordinator(repository: repository)
            coordinator.onFinish = { [weak self] in
                guard let self = self else { return }
                self.dismissFullScreenCover()
                self.presentFullScreenCover(.authorization)
            }
            let coordinatorView = OnboardingCoordinatorView(
                coordinator: coordinator
            )
            return AnyView(coordinatorView)
        case .authorization:
            return AnyView(Text("Auth"))
        case .main:
            return AnyView(Text("Main"))
        }
    }
}
