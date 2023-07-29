//
//  SceneFactory.swift
//  LionVPN
//
//  Created by Николай Чунихин on 23.07.2023.
//

import SwiftUI

final class SceneFactory {
    
    func makeOnboardingScene(flow: OnboardingFlow) -> (some View, OnboardingViewModel) {
        switch flow {
        case .firstOnboarding:
            let viewModel = OnboardingViewModel(viewType: .firstView)
            let view = OnboardingView(viewModel: viewModel)
            return (view, viewModel)
        case .secondOnboarding:
            let viewModel = OnboardingViewModel(viewType: .secondView)
            let view = OnboardingView(viewModel: viewModel)
            return (view, viewModel)
        case .thirdOnboarding:
            let viewModel = OnboardingViewModel(viewType: .thirdView)
            let view = OnboardingView(viewModel: viewModel)
            return (view, viewModel)
        }
    }
    
    func makeAuthScene() -> some View {
        let viewModel = AuthViewModel()
        let view = AuthView(viewModel: viewModel)
        return view
    }
    
    func makeLoginScene(flow: loginFlow) -> some View {
        switch flow {
        case .login:
            let viewModel = LoginViewModel(viewType: .login)
            let view = LoginView(viewModel: viewModel)
            return view
        case .register:
            let viewModel = LoginViewModel(viewType: .register)
            let view = LoginView(viewModel: viewModel)
            return view
        }
    }
    
    func makeMainScene() -> some View {
        let viewModel = MainViewModel()
        let view = MainView(viewModel: viewModel)
        return view
    }
    
    func makeProfileScene() -> some View {
        let viewModel = ProfileViewModel()
        let view = ProfileView(viewModel: viewModel)
        return view
    }
    
    func makeSubscriptionScene() -> some View {
        let viewModel = SubscriptionViewModel()
        let view = SubscriptionView(viewModel: viewModel)
        return view
    }
    
}
