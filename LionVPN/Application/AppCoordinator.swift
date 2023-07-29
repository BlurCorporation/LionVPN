//
//  AppCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI

enum Flow: String, Identifiable {
    case onboarding
    case auth
    case main
    
    var id: String {
        self.rawValue
    }
}

final class AppCoordinator: ObservableObject {
    
    private let diContainer: AppDIContainer
    
    private let coordinatorFactory: CoordinatorFactory
    private let diContainerFactory: DIContainerFactory
    private var repository: RepositoryProtocol
    
    @Published var path = NavigationPath()
    @Published var flow: Flow?
    
    init(diContainer: AppDIContainer){
        self.diContainer = diContainer
        self.coordinatorFactory = diContainer.coordinatorFactory
        self.repository = diContainer.repository
        self.diContainerFactory = diContainer.diContainerFactory
    }
    
    func start() -> Flow {
        if repository.checkOnboarding() && repository.checkAuth() {
            return performMain()
        } else if repository.checkOnboarding() {
            return performAuth()
        } else {
            return performOnboardin()
        }
    }
    
    func performOnboardin() -> Flow {
        repository.onboardingComplete = { [weak self] in self?.push(.auth)}
        return .onboarding
    }
    
    func performAuth() -> Flow {
        return .auth
    }
    
    func performMain() -> Flow {
        return .main
    }
    
    ///Методы навигации
    func push(_ page: Flow) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func performFlow(flow: Flow) -> some View {
        switch flow {
        case .onboarding:
            let diContainer = diContainerFactory.makeOnboardingDIContainer(diContainer: self.diContainer)
            self.coordinatorFactory.makeOnboarding(diContainer: diContainer)
        case .auth:
            Text("auth")
        case .main:
            Text("main")
        }
    }
    
}
