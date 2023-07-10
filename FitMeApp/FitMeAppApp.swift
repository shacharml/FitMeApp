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
    
//    init(){
//        FirebaseApp.configure()
//    }
//    
    var body: some Scene {
        WindowGroup {
           TestView()
            //HomeView()
        }
    }
}
