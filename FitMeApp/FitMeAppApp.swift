//
//  FitMeAppApp.swift
//  FitMeApp
//
//  Created by Shachar Males .
//

import SwiftUI
import Firebase


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}



@main
struct FitMeAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @AppStorage("uid") var userID: String = ""
    
    var body: some Scene {
        WindowGroup {
            if userID == ""{
                //the user ist loges -> go ti the login or signup
                AuthView()
                let _ = print("auth")
            }
            else{
                //TestView()
                //the user is loged in
                HomeView()
            }
        }
    }
}

