//
//  AuthView.swift
//  FitMeApp
//
//  Created by Student30 on 04/07/2023.
//

import SwiftUI

struct AuthView: View {
    
    @State private var currentViewShowing: String = "login"
    
    var body: some View {

        if(currentViewShowing == "login"){
            LoginView(currentShowingView: $currentViewShowing)}
        else{
            SignUpView(currentShowingView: $currentViewShowing)
                //.transition(.move(edge: .bottom))
        }
    
    
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
