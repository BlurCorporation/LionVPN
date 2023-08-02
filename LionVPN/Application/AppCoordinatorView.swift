//
//  AppCoordinatorView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI

struct AppCoordinatorView: View {
    //MARK: - Properties
    let appDIContainer: AppDIContainer
    @ObservedObject var coordinator: AppCoordinator
    //MARK: - Init
    init(appDIContainer: AppDIContainer) {
        self.appDIContainer = appDIContainer
        self.coordinator = AppCoordinator(diContainer: appDIContainer)
    }
    //MARK: - Body
    var body: some View {
        start()
    }
    /// запуск Координатора
    func start() -> some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.performFlow(flow: coordinator.start())
                .navigationDestination(for: Flow.self) { page in
                    coordinator.performFlow(flow: coordinator.start())
                }
        }
    }
}
    //MARK: - Preview
struct AppCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        AppCoordinatorView(appDIContainer: AppDIContainer())
    }
}
