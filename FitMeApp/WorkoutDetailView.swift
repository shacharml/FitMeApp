//
//  WorkoutDetailView.swift
//  FitMeApp
//
//  Created by Student30 on 04/07/2023.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    var workout: Workout
    
    var body: some View {
        //vertical stack
        VStack (alignment: .leading){
            
            Text(workout.day)
                .padding(.leading , 30)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(workout.type)
                .padding(.leading , 30)
                .font(.title)
            
            List(workout.routine , id: \.self){execise in
                Text(execise)
                
            }

        }
    }
}

struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView(workout: Workout(day: "Sunday", type: "Abs", image: "arms", routine: ["Warmup", "V-ups","Situps", "Cool Down"]))
    }
}
