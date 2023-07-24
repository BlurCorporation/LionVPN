//
//  OnboardingView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI



struct OnboardingView: View {
    
    @ObservedObject var viewModel: OnboardingViewModel
    
    var body: some View {
        VStack {
            Spacer()
            setImage()
            Spacer()
            setMainText()
            setAdditionaText()
            nextButton()
        }
        .padding(.horizontal, 16)
    }
    
    @ViewBuilder
    func setImage() -> some View {
        Image(systemName: viewModel.setImage())
            .resizable()
            .frame(width: 200, height: 200)
    }
    
    @ViewBuilder
    func setMainText() -> some View {
        Text(viewModel.setMainText())
            .fontDesign(.rounded)
            .ignoresSafeArea()
            .padding(.bottom, 16)
    }
    
    @ViewBuilder
    func setAdditionaText() -> some View {
        VStack {
            Text(viewModel.setAdditionalText().0)
            Text(viewModel.setAdditionalText().1)
        }
        .font(.system(size: 12))
        .foregroundColor(.gray)
        .padding(.horizontal, 16)
        .padding(.bottom, 40)
        .frame(maxWidth: .infinity)
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
        .ignoresSafeArea()
        
        .padding(.bottom,20)
    }
}

struct FirstOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(viewModel: OnboardingViewModel(viewType: .firstView))
    }
}
