//
//  SplashView.swift
//  App_HabitPlus
//
//  Created by Kaique Lopes de Oliveira on 18/09/21.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .loading
    
    var body: some View {
        switch state {
        case .loading:
            loadingView()
        case .goToSignUpScreen:
            Text("Tela de Cadastro")
                .padding()
        case .goToSignInScreen:
            Text("Tela Login")
        case .goToHomeScreen:
            Text("Tela Principal")
        case .error(let msg):
            Text("Ocorreu um Erro:\n \(msg)")
        }
    }
}

extension SplashView {
    func loadingView () -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
        }
    }
}

// MARK: - Criando o Preview
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
