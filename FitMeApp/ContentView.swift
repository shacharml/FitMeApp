//
//  ContentView.swift
//  FitMeApp
//
//  Created by Student30 on 04/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
        .padding(.top,20)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
