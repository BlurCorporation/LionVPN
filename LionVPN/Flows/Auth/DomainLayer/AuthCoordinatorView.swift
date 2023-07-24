//
//  AuthCoordinatorView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import SwiftUI

struct AuthCoordinatorView: View {
    
    let diContainer: OnboardingDIContainer
    @ObservedObject var coordinator: OnboardingCoordinator
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    init(diContainer: OnboardingDIContainer) {
        self.diContainer = diContainer
        coordinator = OnboardingCoordinator(diContaner: diContainer)
    }
}

struct AuthCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        AuthCoordinatorView(diContainer: OnboardingDIContainer(diContaner: AppDIContainer()))
    }
}
