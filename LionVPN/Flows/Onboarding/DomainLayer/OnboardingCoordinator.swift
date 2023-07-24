//
//  OnboardingCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI



final class OnboardingCoordinator: ObservableObject {
    let repository: Repository
    
    init(diContaner: OnboardingDIContainer) {
        self.repository = diContaner.repository
    }
}


