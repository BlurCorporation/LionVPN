//
//  OnboardingFactory.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI


final class OnboardingModule {
    
    let dendencies: OnboardingDIContainer
    let coordinator: OnboardingCoordinatorView?
    
    init(dendencies: OnboardingDIContainer) {
        self.dendencies = dendencies
    }
    
    @ViewBuilder
    func makeOnboardingCoordinatorView() -> some View {
        
    }
}


