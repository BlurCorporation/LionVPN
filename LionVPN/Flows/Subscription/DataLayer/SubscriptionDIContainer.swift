//
//  SubscriptionDIContainer.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import Foundation

struct SubscriptionDIContainer {
    
    let repository: Repository
    let sceneFactory: SceneFactory
    
    init(diContaner: AppDIContainer) {
        self.repository = diContaner.repository
        self.sceneFactory = diContaner.sceneFactory
    }
}
