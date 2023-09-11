//
//  OnboardingView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 07.09.2023.
//

import SwiftUI

// MARK: - View
struct OnboardingView<ViewModel>: View where ViewModel: OnboardingViewModelProtocol {
    
    // MARK: Properties
    @ObservedObject var viewModel: ViewModel
    
    // MARK: Body
    var body: some View {
        VStack {
            imageView
            descriptionView
            if viewModel.currentIndex < viewModel.contentModels.count - 1 {
                skipButton
            }
            nextButton
        }
        .padding(.horizontal, 16)
    }
}

// MARK: - UI elements
private extension OnboardingView {
    
    var imageView: some View {
        VStack {
            Spacer()
            Image(systemName: viewModel.contentModels[viewModel.currentIndex].imageName)
                .resizable()
            .frame(width: 200, height: 200)
            Spacer()
        }
    }
    
    var titleView: some View {
        Text(viewModel.contentModels[viewModel.currentIndex].title)
            .fontDesign(.rounded)
            .ignoresSafeArea()
            .padding(.bottom, 16)
    }
    
    var descriptionView: some View {
        VStack {
            Text(viewModel.contentModels[viewModel.currentIndex].description.0)
            Text(viewModel.contentModels[viewModel.currentIndex].description.1)
        }
        .font(.system(size: 12))
        .foregroundColor(.gray)
        .padding(.horizontal, 16)
        .padding(.bottom, 40)
        .frame(maxWidth: .infinity)
    }
    
    var skipButton: some View {
        Button(
            action: { viewModel.skipButtonTapped() },
            label: { Text("Пропустить").fontDesign(.rounded).fontWeight(.bold) }
        )
        .frame(height: 48)
        .frame(maxWidth: .infinity)
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(10)
        .ignoresSafeArea()
        .padding(.bottom,20)
    }
    
    var nextButton: some View {
        Button(
            action: { viewModel.nextButtonTapped() },
            label: { Text(viewModel.currentIndex < viewModel.contentModels.count - 1 ? "Далее" : "Готово").fontDesign(.rounded).fontWeight(.bold) }
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
