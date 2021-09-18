//
//  SplashView.swift
//  App_HabitPlus
//
//  Created by Kaique Lopes de Oliveira on 18/09/21.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .error("Errow")
    
    var body: some View {
        switch state {
        case .loading:
            Text("Loading")
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

// MARK: - Criando o Preview
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
