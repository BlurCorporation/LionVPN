//
//  SubscriptionCoordinatorView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import SwiftUI

struct SubscriptionCoordinatorView: View {
    
    let diContainer: SubscriptionDIContainer
    @ObservedObject var coordinator: SubscriptionCoordinator
    
    init(diContainer: SubscriptionDIContainer) {
        self.diContainer = diContainer
        self.coordinator = SubscriptionCoordinator(diContaner: diContainer)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SubscriptionCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionCoordinatorView(diContainer: SubscriptionDIContainer(diContaner: AppDIContainer()))
    }
}
