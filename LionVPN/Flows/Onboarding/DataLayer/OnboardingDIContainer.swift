//
//  OnboardingDIContainer.swift
//  LionVPN
//
//  Created by Николай Чунихин on 22.07.2023.
//

import Foundation

struct OnboardingDIContainer {
    
    let repository: RepositoryOnboarding
    let sceneFactory: SceneFactory
    
    init(diContaner: AppDIContainer) {
        self.repository = diContaner.repository
        self.sceneFactory = diContaner.sceneFactory
    }
}
