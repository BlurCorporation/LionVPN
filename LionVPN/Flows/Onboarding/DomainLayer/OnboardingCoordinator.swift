//
//  OnboardingCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI

final class OnboardingCoordinator: ObservableObject {
    let repository: Repository
    let sceneFactory: SceneFactory
    
    init(diContaner: OnboardingDIContainer) {
        self.repository = diContaner.repository
        self.sceneFactory = diContaner.sceneFactory
    }
}
