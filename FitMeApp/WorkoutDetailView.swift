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
        GeometryReader{geometry in
            
            NavigationView(){
                ScrollView {
                    
                    ZStack {
                        Image(workout.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: 500)
                            .clipped()
                        
                        
                        LinearGradient(gradient: Gradient(colors: [.clear ,Color(.systemBackground)]), startPoint: .top, endPoint: .bottom)
                            .overlay(alignment: .bottomLeading){
                                VStack(alignment: .leading){
                                    Label(workout.day+" Workout" , systemImage: "calendar")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                }
                            }
                    }
                    
                    
                    //vertical stack
                    VStack (alignment: .leading , spacing: 6){
                        
                        Label(workout.type , systemImage: "dumbbell.fill")
                        Label("30 mins" , systemImage: "timer")
                        Label("230 cal" , systemImage: "flame.fill")
                        
                        Divider().background(.white)
                        //TODO check why dont showing the list
                        List{
                            ForEach(workout.routine, id: \.self){execise in
                                Text(execise)}
                            
                        }
                        
                        
                        //                            List(workout.routine , id: \.self){execise in
                        //                                Text(execise)}
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    
                }.edgesIgnoringSafeArea(.top)
            }
            
            
        }
        
    }
}

struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView(workout: Workout(id: "6", day: "Sunday", type: "ABS", image: "strong-woman", time: "45", routine: ["Warmup", "V-ups","Situps", "Cool Down"]))
            .preferredColorScheme(.dark)
    }
}
