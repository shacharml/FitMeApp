//
//  FitMeAppApp.swift
//  FitMeApp
//
//  Created by Shachar Males .
//

import SwiftUI
import FirebaseCore

@main
struct FitMeAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
