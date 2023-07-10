//
//  TestView.swift
//  FitMeApp
//
//  Created by Student30 on 10/07/2023.
//

import SwiftUI
import Firebase
import FirebaseFirestore

struct TestView: View {
    var body: some View {
        VStack{
            Text("Hii")
            List (FirestoreManager.shared.list) { item in
                Text(item.day)
                Text(item.routine[0])
                //            let _ = print(item.day)
                //            let _ = print(item.routine)
                // let _ = print("\(item.day)")
            }
        }
    }
    
    init(){
        FirestoreManager.shared.list.removeAll()
        FirestoreManager.shared.getWorkouts()
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
