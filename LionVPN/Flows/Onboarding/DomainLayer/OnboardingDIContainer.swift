//
//  OnboardingDIContainer.swift
//  LionVPN
//
//  Created by Николай Чунихин on 22.07.2023.
//

import Foundation

final class OnboardingDIContainer {
    
    let repository: onboardingDataProtocol
    
    init(repository: onboardingDataProtocol) {
        self.repository = repository
    }
}
