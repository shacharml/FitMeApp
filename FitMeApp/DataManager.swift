import Foundation
import Firebase


struct Workout:Identifiable, Codable{
    var id : String
    var day : String
    var type : String
    var image : String
    var time : String
    //all the exercises
    var routine: [String]
}
//
//struct Exercise:Identifiable, Codable, CustomStringConvertible{
//    var id :String
//    var name : String
//    var time : String
//    var sets : String
//    var image : String
//
//    var description: String{
//        return "id: \(id), name: \(name), time: \(time) "
//    }
//}



//
//let sundayWorkout = Workout(id: "1", day: "Sunday", type: "Cardio", image: "push-ups", time: "30 minutes", routine: ["Push-ups", "Running", "Jumping Jacks"])
//let mondayWorkout = Workout(id: "2", day: "Monday", type: "Strength Training", image: "push-ups", time: "60 minutes", routine: ["Push-ups", "Squats", "Bench Press"])
//let tuesdayWorkout = Workout(id: "3", day: "Tuesday", type: "Yoga", image: "push-ups", time: "45 minutes", routine: ["Push-ups", "Sun Salutations", "Warrior Poses"])
//let wednesdayWorkout = Workout(id: "4", day: "Wednesday", type: "HIIT", image: "push-ups", time: "45 minutes", routine: ["Push-ups", "Burpees", "Mountain Climbers"])
//let thursdayWorkout = Workout(id: "5", day: "Thursday", type: "Pilates", image: "push-ups", time: "45 minutes", routine: ["Push-ups", "Leg Circles", "Crisscross"])
//let fridayWorkout = Workout(id: "6", day: "Friday", type: "Cardio", image: "push-ups", time: "30 minutes", routine: ["Push-ups", "Running", "Jumping Jacks"])
//let saturdayWorkout = Workout(id: "7", day: "Saturday", type: "Strength Training", image: "push-ups", time: "60 minutes", routine: ["Push-ups", "Squats", "Bench Press"])
//
//let workoutsData = [sundayWorkout, mondayWorkout, tuesdayWorkout, wednesdayWorkout, thursdayWorkout, fridayWorkout, saturdayWorkout]

let workoutsData = [
    Workout(id: "0", day: "Sunday", type: "Chest", image: "push-ups", time: "45", routine: ["Warmup", "Bench Presses", "Cool Down"]),
    Workout(id: "1", day: "Monday", type: "Back", image: "fitness-workout", time: "60", routine: ["Warmup", "Pull Ups", "Cool Down"]),
    Workout(id: "2", day: "Tuesday", type: "Arms", image: "arms", time: "30", routine: ["Warmup", "Biseps", "Cool Down"]),
    Workout(id: "3", day: "Wensday", type: "Legs", image: "fitness-workout", time: "25", routine: ["Warmup", "Squats", "Cool Down"]),
    Workout(id: "4", day: "Sunday", type: "Chest", image: "push-ups", time: "45", routine: ["Warmup", "Bench Presses", "Cool Down"]),
    Workout(id: "5", day: "Monday", type: "Back", image: "fitness-workout", time: "60", routine: ["Warmup", "Pull Ups", "Cool Down"]),
    Workout(id: "6", day: "Tuesday", type: "Arms", image: "arms", time: "30", routine: ["Warmup", "Biseps", "Cool Down"])
]



//Workout(id: "1", day: "Sunday", type: "Cardio", image: "push-ups", time: "30 minutes", routine: ["Push-ups", "Running", "Jumping Jacks"]),
//Workout(id: "2", day: "Monday", type: "Strength Training", image: "push-ups", time: "60 minutes", routine: ["Push-ups", "Squats", "Bench Press"]),
//Workout(id: "3", day: "Tuesday", type: "Yoga", image: "fitness-workout", time: "45 minutes", routine: ["Push-ups", "Sun Salutations", "Warrior Poses"]),
//Workout(id: "4", day: "Wednesday", type: "HIIT", image: "arms", time: "45 minutes", routine: ["Push-ups", "Burpees", "Mountain Climbers"]),
//Workout(id: "5", day: "Thursday", type: "Pilates", image: "push-ups", time: "45 minutes", routine: ["Push-ups", "Leg Circles", "Crisscross"]),
//Workout(id: "6", day: "Friday", type: "Cardio", image: "push-ups", time: "30 minutes", routine: ["Push-ups", "Running", "Jumping Jacks"]),
//Workout(id: "7", day: "Saturday", type: "Strength Training", image: "push-ups", time: "60 minutes", routine: ["Push-ups", "Squats", "Bench Press"])

//



