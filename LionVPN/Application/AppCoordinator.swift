//
//  AppCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI

enum Flow {
    case onboarding
    case auth
    case main
}

final class AppCoordinator: ObservableObject {
    
    private let diContainer: AppDIContainer
    
    private let coordinatorFactory: CoordinatorFactory
    private let repository: Repository
    
    @Published var path = NavigationPath()
    @Published var flow: Flow?
    
    init(diContainer: AppDIContainer){
        self.diContainer = diContainer
        self.coordinatorFactory = diContainer.coordinatorFactory
        self.repository = diContainer.repository
    }
    
    func start() -> Flow {
        if repository.checkOnboarding() && repository.checkOnboarding() {
            return performMain()
        } else if repository.checkOnboarding() {
            return performAuth()
        } else {
            return performOnboardin()
        }
    }
    
    func performOnboardin() -> Flow {
        return .onboarding
    }
    
    func performAuth() -> Flow {
        return .auth
    }
    
    func performMain() -> Flow {
        return .main
    }
    
    @ViewBuilder
    func performFlow(flow: Flow) -> some View {
        switch flow {
        case .onboarding:
            let dependencies = OnboardingDIContainer(diContaner: self.diContainer)
            self.coordinatorFactory.makeOnboarding(dependencies: dependencies)
        case .auth:
            Text("auth")
        case .main:
            Text("main")
        }
    }
    
}


