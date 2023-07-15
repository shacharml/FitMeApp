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
    var cal: String
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

let workoutsData = [
    Workout(id: "0", day: "Sunday", type: "Cardio", image: "pic6", time: "45", routine: ["Warmup:\n10 minutes of light cardio (e.g., jogging or cycling) followed by dynamic stretching exercises for major muscle groups.", "1. Running 200 meters (3 sets x 10 reps)", "2. Jumping jacks (4 sets x 15 reps)", "3. Burpees (3 sets x 12 reps)"], cal: "200"),
    Workout(id: "1", day: "Monday", type: "Strength Training", image: "pic4", time: "60", routine: ["Warmup:\n10 minutes of light cardio (e.g., jogging or cycling) followed by dynamic stretching exercises for major muscle groups.", "1. Squats (4 sets x 8 reps)","2. Bench press (3 sets x 10 reps)", "3. Deadlifts (3 sets x 8 reps)"], cal: "230"),
    Workout(id: "2", day: "Tuesday", type: "Yoga", image: "pic2", time: "30", routine: ["Warmup:\n10 minutes of light cardio (e.g., jogging or cycling) followed by dynamic stretching exercises for major muscle groups.","1. Downward-facing dog (3 sets x 10 reps)","2. Warrior II (3 sets x 12 reps)","3. Tree pose (2 sets x 8 reps)" ,"Cool Down"], cal: "320"),
    Workout(id: "3", day: "Wensday", type: "HIIT", image: "pic5", time: "25", routine: ["Warmup:\n10 minutes of light cardio (e.g., jogging or cycling) followed by dynamic stretching exercises for major muscle groups.", "1. High knees (4 sets x 20 reps)","2. Mountain climbers (3 sets x 15 reps)","3. Plank jacks (3 sets x 12 reps)", "Cool Down"], cal: "450"),
    Workout(id: "4", day: "Thursday", type: "Pilates", image: "pic3", time: "45", routine: ["Warmup:\n10 minutes of light cardio (e.g., jogging or cycling) followed by dynamic stretching exercises for major muscle groups.", "1. Roll-ups (3 sets x 10 reps)","2.  Leg circles (3 sets x 12 reps)","3. Swimming (4 sets x 8 reps)", "Cool Down"], cal: "340"),
    Workout(id: "5", day: "Friday", type: "Crossfit", image: "pic1", time: "60", routine: ["Warmup:\n10 minutes of light cardio (e.g., jogging or cycling) followed by dynamic stretching exercises for major muscle groups.","1. Pull-ups (4 sets x 8 reps)","2. Thrusters (3 sets x 10 reps)","3.  Double unders (3 sets x 20 reps)", "Cool Down"], cal: "600"),
    Workout(id: "6", day: "Saturday", type: "Cardio", image: "pic8", time: "30", routine: ["Warmup:\n10 minutes of light cardio (e.g., jogging or cycling) followed by dynamic stretching exercises for major muscle groups.", "1. Running 200 meters (3 sets x 10 reps)", "2. Jumping jacks (4 sets x 15 reps)", "3. Burpees (3 sets x 12 reps)"], cal: "460")
]

let fullBodyWorkout = Workout(id: "7", day: "Full Body", type: "full body", image: "pic7", time: "45", routine: ["Warmup", "1. Squats: 3 sets x 12 reps","2. Push-ups: 3 sets x 10 reps","3. Lunges: 3 sets x 10 reps per leg","4. Bent-over rows: 3 sets x 12 reps","5. Shoulder press: 3 sets x 10 reps","6. Plank: 3 sets, hold for 30 seconds","7. Bicep curls: 3 sets x 10 reps","8. Tricep dips: 3 sets x 12 reps", "Cool Down"], cal: "470")
