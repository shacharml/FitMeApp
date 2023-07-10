//
//  FirebaseManager.swift
//  FitMeApp
//
//  Created by Student30 on 10/07/2023.
//

import Foundation
import FirebaseDatabase
import Firebase

class RealTimeFirebaseManager: ObservableObject{
    
    @Published var workoutsList : [Workout] = []
    private let database = Database.database(url: "https://fitmeapp-df3f1-default-rtdb.europe-west1.firebasedatabase.app").reference()
    
    func loadWorkouts(){
        database.child("workouts").getData(completion: {error, snapshot in
            if let error = error{
                //handel error
                print("error getting data: \(error)")
                return
            }
            
            guard snapshot.exists() else {
                //empty snapshot
                print("empty snapshot")
                return
            }
            
            do{
                let jsonData = try JSONSerialization.data(withJSONObject: snapshot.value!)
                let workouts = try JSONDecoder().decode([Workout].self, from: jsonData)
                
                self.workoutsList = workouts
            } catch{
                print("error decode the data: \(error)")
            }
        })
        
        
        
        
        
        //        observe(.value){ snapshot in
        //            guard let value = snapshot.value as? [String: Any] else{
        //                //handel error
        //                print("error")
        //                return
        //            }
        //
        //            self.workoutsList = value.compactMap{id , data in
        //                guard let workoutdata = try? JSONSerialization.data(withJSONObject: data),
        //                      let workout = try? JSONDecoder().decode(Workout.self, from: workoutdata) else{
        //                    print("load dont work")
        //                    return nil
        //                }
        //                print("load worked")
        //                return workout
        //            }
        //        }
    }
    
    func saveWorkout(_ workout: Workout){
        let workoutData = try? JSONEncoder().encode(workout)
        guard let workoutDictionary = try? JSONSerialization.jsonObject(with: workoutData ?? Data(), options: []) as? [String: Any] else{
            //handel error
            return
        }
        
        database.child("workouts").child(workout.id).setValue(workoutDictionary){ error, _ in
            if let error = error{
                print("Failed to save workout: \(error)")
            } else{
                print("workout save")
                self.loadWorkouts()
            }
        }
    }
}
