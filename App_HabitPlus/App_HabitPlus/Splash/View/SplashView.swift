//
//  SplashView.swift
//  App_HabitPlus
//
//  Created by Kaique Lopes de Oliveira on 18/09/21.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .error("ERRO")
    
    var body: some View {
        
        switch state {
        case .loading:
            loadingView()
        case .goToSignUpScreen:
            Text("Tela de Cadastro")
        case .goToSignInScreen:
            Text("Tela Login")
        case .goToHomeScreen:
            Text("Tela Principal")
        case .error(let msg):
            loadingView(error: msg)
        }
    }
}


// MARK: - Extension SplashView ( Refatoração )
extension SplashView {
    func loadingView (error: String? = nil) -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
            
            if let error = error {
                Text("")
                    .alert(isPresented:.constant(true)) {
                        Alert(title: Text("Habit"), message: Text(error), dismissButton: .default(Text("OK")) {
                            
                        })
                    }
            }
        }
    }
}

// MARK: - Criando o Preview
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .error("Erro"))
    }
}
