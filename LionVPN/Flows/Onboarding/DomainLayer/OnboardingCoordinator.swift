//
//  OnboardingCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI

enum OnboardingFlow: String, Identifiable {
    case firstOnboarding
    case secondOnboarding
    case thirdOnboarding
    
    var id: String {
        self.rawValue
    }
}

final class OnboardingCoordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var flow: OnboardingFlow?
    
    let repository: RepositoryOnboarding
    let sceneFactory: SceneFactory
    
    init(diContaner: OnboardingDIContainer) {
        self.repository = diContaner.repository
        self.sceneFactory = diContaner.sceneFactory
    }
    
    ///Методы навигации
    func push(_ page: OnboardingFlow) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismiss() {
        self.flow = nil
    }
    
    func performOnboardingScene(viewType: OnboardingFlow) -> some View {
        switch viewType {
        case .firstOnboarding:
            let (view, viewModel) = sceneFactory.makeOnboardingScene(flow: .firstOnboarding)
            
            viewModel.firstSceneOnFinish = { [weak self] in self?.push(.secondOnboarding)}
            
            return view
            
        case .secondOnboarding:
            let (view, viewModel) = sceneFactory.makeOnboardingScene(flow: .secondOnboarding)
            
            viewModel.secondSceneOnFinish = {[weak self] in self?.push(.thirdOnboarding)}
            
            return view
            
        case .thirdOnboarding:
            let (view, viewModel) = sceneFactory.makeOnboardingScene(flow: .thirdOnboarding)
            
            viewModel.thirdSceneOnFinish = {[weak self] in
                
            self?.onboardingComplete()
            self?.popToRoot()
            }
            //viewModel.roadToAuth = {[weak self] in self?.dismiss()}
        
            
            return view
        }
    }
    
    func onboardingComplete() {
        repository.setOnboardingCompleted()
    }
}
