//
//  TestView.swift
//  FitMeApp
//
//  Created by Student30 on 10/07/2023.
//

import SwiftUI
import Firebase
import FirebaseDatabase
import FirebaseFirestore
import FirebaseFirestoreSwift

struct TestView: View {
    @ObservedObject var viewModel = RealTimeFirebaseManager()
    
    var body: some View {
        VStack{
            Text("Hii")
            
            List(viewModel.workoutsList){ workout in
                VStack(alignment: .leading){
                    Text(workout.type)
                        .font(.headline)
                    
                    Text(workout.day)
                        .font(.subheadline)
                    
                    Text(workout.time)
                        .font(.subheadline)
                    
                    //display the routin list
                    VStack(alignment: .leading) {
                        Text("Routine:").font(.subheadline)
                    
                        List(workout.routine, id: \.self){
                            exercise in Text(exercise)
                        }
                    }
                }
            }.onAppear{
                viewModel.loadWorkouts()
            }
            
            
//            List (FirestoreManager.shared.list) { item in
//                Text(item.day)
//                Text(item.routine[0])
//                //            let _ = print(item.day)
//                //            let _ = print(item.routine)
//                // let _ = print("\(item.day)")
//            }
        }
    }
    
    init(){
        //FirestoreManager.shared.list.removeAll()
        //FirestoreManager.shared.getWorkouts()
        //viewModel.saveWorkout(workoutsData[1])
        //viewModel.loadWorkouts()
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}


