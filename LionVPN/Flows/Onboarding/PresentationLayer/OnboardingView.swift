//
//  OnboardingView.swift
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

struct OnboardingView: View {
    
    let viewType: OnboardingViewType
    @ObservedObject var viewModel: OnboardingViewModel
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "xbox.logo")
            Text(setMainText(viewType: viewType))
            Text(setAdditionaText(viewType: viewType))
            Spacer()
            nextButton()
                
            
        }
    }
    
    @ViewBuilder
    func nextButton() -> some View {
        Button(
            action: {print("Next")},
            label: {Text("Далее").fontDesign(.rounded).fontWeight(.bold)}
        )
        .frame(height: 48)
        .frame(maxWidth: .infinity)
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(10)
        .padding(.horizontal, 25)
        .padding(.bottom,20)
    }
    
    func setMainText(viewType: OnboardingViewType) -> String {
        return "Text"
    }
    
    func setAdditionaText(viewType: OnboardingViewType) -> String {
        return "Text"
    }
    
}

struct FirstOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(viewType: .firstView, viewModel: OnboardingViewModel())
    }
}
