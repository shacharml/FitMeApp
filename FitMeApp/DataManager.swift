//
//  DataManager.swift
//  FitMeApp
//
//  Created by Student30 on 09/07/2023.
//

import Foundation
import Firebase


struct Workout:Identifiable, Codable{
    var id : String
    var day : String
    var type : String
    var image : String
    var time : String
    //change to exercise
    var routine: [String]
}

struct Exercise:Identifiable{
    var id = UUID()
    var name : String
    var time : String
    var sets : String
    var image : String
}

let workoutsData = [
    Workout(id: "0", day: "Sunday", type: "Chest", image: "push-ups", time: "45", routine: ["Warmup", "Bench Presses", "Cool Down"]),
    Workout(id: "1", day: "Monday", type: "Back", image: "fitness-workout", time: "60", routine: ["Warmup", "Pull Ups", "Cool Down"]),
    Workout(id: "2", day: "Tuesday", type: "Arms", image: "arms", time: "30", routine: ["Warmup", "Biseps", "Cool Down"]),
    Workout(id: "3", day: "Wensday", type: "Legs", image: "fitness-workout", time: "25", routine: ["Warmup", "Squats", "Cool Down"])
]
