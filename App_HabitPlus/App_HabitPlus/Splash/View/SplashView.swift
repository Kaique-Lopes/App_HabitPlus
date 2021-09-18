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
            Text("Loading")
        case .goToSignInScreen:
            Text("Tela Login")
        case .goToHomeScreen:
            Text("Tela Principal")
        case .error(let msg):
            Text("Error \(msg)")
        }
    }
}

// MARK: - Criando o Preview
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
