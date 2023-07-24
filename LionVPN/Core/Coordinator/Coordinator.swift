//
//  Coordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 22.07.2023.
//

import Foundation

protocol Coordinator: AnyObject {
    func toRootScreen(of path: Flow)
    func toPreviousScreen(of path: Flow)
    func pushToScreen(view: any Destination, of path: Flow)
}

enum Flow {
    case onboarding
    case auth
    case main
}

protocol Destination: Hashable {}
