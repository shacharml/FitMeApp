//
//  ContentView.swift
//  FitMeApp
//
//  Created by Student30 on 04/07/2023.
//

import SwiftUI
import FirebaseAuth

struct HomeView: View {
    
    @AppStorage("uid") var userID: String = ""
    
    let workouts = workoutsData
    
    var body: some View {
        //if the user isnt login yet -> move to login page
        if userID == ""{
            AuthView()
            let _ = print("auth")
        }
        else{
           //the user is loged in
            NavigationView {
                
                VStack(alignment: .leading) {
                    //main Card view
                    ZStack {
                        Image("fitness-workout")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 300)
                        
                        
                        //Vertical Stack
                        VStack {
                            Spacer()
                            
                            Text("Full Body Workout")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            Text("For Beginners")
                                .fontWeight(.regular)
                                .foregroundColor(.white)
                        }
                        .padding()
                        .frame(width: 380)
                        .background(Color(hue: 1.0, saturation: 0.048, brightness: 0.28, opacity: 0.384))
                    }
                    .frame(width: 380 , height: 300)
                    .cornerRadius(20)
                    .clipped()
                    .shadow(radius: 8)
                    //.padding(.top,20)
                    .padding()
                    
                    Text("Weekly Plan")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding()
                    
                    
                    ScrollView(.horizontal, showsIndicators: true) {
                        //stack where the inner elements are stack horizontally
                        HStack (spacing: 20) {
                            ForEach(workouts){ workout in
                                //day card
                                NavigationLink(destination: WorkoutDetailView(workout: workout)) {
                                    ZStack {
                                        Image(workout.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 220)
                                        
                                        //Vertical Stack
                                        VStack {
                                            Spacer()
                                            
                                            Text(workout.day)
                                                .font(.title)
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white)
                                            Text(workout.type)
                                                .fontWeight(.regular)
                                                .foregroundColor(.white)
                                        }
                                        .padding()
                                        .frame(width: 150)
                                        .background(Color(hue: 1.0, saturation: 0.048, brightness: 0.28, opacity: 0.384))
                                        
                                    }
                                    .frame(width: 150 , height: 220)
                                    .clipped()
                                    .cornerRadius(20)
                                    .shadow(radius: 8)
                                }
                                
                            }
                        }
                        .padding()
                    }
                    .offset(x: 0, y: -20)
                    
                    Spacer()
                }
                .navigationBarTitle("Home Workouts")
                .toolbar{
                    Button(action: {
                        let firebaseAuth = Auth.auth()
                        do {
                          try firebaseAuth.signOut()
                            withAnimation{
                                userID = ""
                            }
                            
                            } catch let signOutError as NSError {
                          print("Error signing out: %@", signOutError)
                        }
                    }){Image(systemName: "rectangle.portrait.and.arrow.right").imageScale(.large)
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct Workout:Identifiable{
    var id = UUID()
    var day : String
    var type : String
    var image : String
    var routine: [String]
}

let workoutsData = [
    Workout(day: "Sunday", type: "Chest", image: "push-ups", routine: ["Warmup", "Bench Presses", "Cool Down"]),
    Workout(day: "Monday", type: "Back", image: "fitness-workout", routine: ["Warmup", "Pull Ups", "Cool Down"]),
    Workout(day: "Tuesday", type: "Arms", image: "arms", routine: ["Warmup", "Biseps", "Cool Down"]),
    Workout(day: "Wensday", type: "Legs", image: "fitness-workout", routine: ["Warmup", "Squats", "Cool Down"])
]
