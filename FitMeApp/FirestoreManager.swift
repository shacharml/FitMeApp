//
//  FirebaseManager.swift
//  FitMeApp
//
//  Created by Student30 on 09/07/2023.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift


class FirestoreManager: ObservableObject{
    
    
    static let shared = FirestoreManager() // Singleton instance
       
       private let db = Firestore.firestore()
       private let collectionName = "workouts" // Name of the collection in Firestore
       
    @Published var list : [Workout] = []
       private init() {} // Private initializer to prevent creating multiple instances
       
       func addWorkout(workout: Workout) {
           do {
               let _ = try db.collection(collectionName).addDocument(from: workout)
           } catch {
               print("Error adding workout: \(error.localizedDescription)")
           }
       }
    
    func getWorkouts() {
        db.collection(collectionName).getDocuments { snapshot, error in
            if error == nil {
                // No errors
                if let snapshot = snapshot {
                    // Update the list in the main thread
                    DispatchQueue.main.async {
                        // Get all the documents data and create Workout instances
                        self.list = snapshot.documents.map { d in
                            return Workout(id: d.documentID,
                                           day: d["day"] as? String ?? "",
                                           type: d["type"] as? String ?? "",
                                           image: d["image"] as? String ?? "",
                                           time: d["time"] as? String ?? "",
                                           routine: d["routine"] as? [String] ?? ["",""])
                        }
                    }
                }
            } else {
                // Handle error here
            }
        }
    }

    
//    func getAllWorkouts(completion: @escaping ([Workout]) -> Void) {
//        db.collection(collectionName).getDocuments { snapshot, error in
//            if let error = error {
//                print("Error fetching workouts: \(error.localizedDescription)")
//                completion([])
//                return
//            }
//
//            var workouts: [Workout] = []
//
//            for document in snapshot!.documents {
//                do {
//                    if var workout = try document.data(as: Workout.self) {
//                        workouts.append(workout)
//                    }
//                } catch {
//                    print("Error parsing workout: \(error.localizedDescription)")
//                }
//            }
//
//            completion(workouts)
//        }
//    }
    



    
    
    
    
    
    //make it singeltone
//    static let databasePath = FirebaseManager()
//
//    private let ref = Database.database().reference()
//
//    private init() {
//        ref = Database.database().reference()
//    }
//
//    private var databasePath: DatabaseReference? = {
//        let ref = Database.database().reference()
//        return ref
//    }()
//
//    func save (_ workout: Workout){
//        self.ref.child("Workouts").child("\(workout.id)").setValue(workout)
//    }
//
//    func saveWorkout(workout: Workout){
//        guard let workoutDict = try? JSONEncoder().encode(workout),
//              let workoutData = try? JSONSerialization.jsonObject(with: workoutDict, options: []) as? [String: Any] else{
//            return
//        }
//        //Save the task data to firebase
//        ref.child("Workouts").child("\(workout.id)").setValue(workoutData)
//    }
}
