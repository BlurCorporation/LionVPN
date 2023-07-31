//
//  OnboardingViewModel.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI

enum OnboardingViewType {
    case firstView
    case secondView
    case thirdView
}

final class OnboardingViewModel: ObservableObject {
    
    let viewType: OnboardingViewType
    
    var firstSceneOnFinish: () -> Void = {}
    var secondSceneOnFinish: () -> Void = {}
    var thirdSceneOnFinish: () -> Void = {}
    
    init(viewType: OnboardingViewType) {
        self.viewType = viewType
    }
     
    func setImage() -> String {
        switch viewType {
        case .firstView:
            return "xbox.logo"
        case .secondView:
            return "playstation.logo"
        case .thirdView:
            return "macpro.gen3.fill"
        }
    }
    
    func setMainText() -> String {
        switch viewType {
        case .firstView:
            return "Безопасное соединение"
        case .secondView:
            return "Полный доступ к информации"
        case .thirdView:
            return "Быстрое соединение"
        }
    }
    
    func setAdditionalText() -> (String, String) {
        switch viewType {
        case .firstView:
            return ("Мы не храним и никому не предаем вашу историю", "вашего нахождения в сети")
            
        case .secondView:
            return ("Мы поможем получить вам полный доступ к", "информации, которая недоступна в вашей стране")
            
        case .thirdView:
            return ("Использование VPN практически никак не", "повлияет на скорость вашей сети")
        }
    }
    
    func ButtonHandler() {
        switch viewType {
        case .firstView:
            self.firstSceneOnFinish()
            
        case .secondView:
            self.secondSceneOnFinish()
            
        case .thirdView:
            self.thirdSceneOnFinish()
        }
    }
}
