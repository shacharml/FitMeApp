import Foundation

//NOT WORKING  ON THE EMULATOR -> INSTADE REAL TIME DATABASE

//import Firebase
//import FirebaseFirestoreSwift
//
//
//class FirestoreManager: ObservableObject{
//
//
//    static let shared = FirestoreManager() // Singleton instance
//
//       private let db = Firestore.firestore()
//       private let collectionName = "workouts" // Name of the collection in Firestore
//
//    @Published var list : [Workout] = []
//       private init() {} // Private initializer to prevent creating multiple instances
//
//       func addWorkout(workout: Workout) {
//           do {
//               let _ = try db.collection(collectionName).addDocument(from: workout)
//           } catch {
//               print("Error adding workout: \(error.localizedDescription)")
//           }
//       }
//
//    func getWorkouts() {
////        self.list.removeAll()
//        db.collection(collectionName).getDocuments { snapshot, error in
//            if error == nil {
//                // No errors
//                if let snapshot = snapshot {
//                    // Update the list in the main thread
//                    DispatchQueue.main.async {
//                        // Get all the documents data and create Workout instances
//                        self.list = snapshot.documents.map { d in
//                            return Workout(id: d.documentID,
//                                           day: d["day"] as? String ?? "",
//                                           type: d["type"] as? String ?? "",
//                                           image: d["image"] as? String ?? "",
//                                           time: d["time"] as? String ?? "",
//                                           routine: d["routine"] as? [String] ?? ["",""])
//                        }
//                    }
//                }
//            } else {
//                // Handle error here
//            }
//        }
//    }
//
//}
