//
//  PrimaryButtonsStyle.swift
//  FitMeApp
//
//  Created by Student30 on 04/07/2023.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle{
    var fillColor: Color = Color(red: 106/255, green: 157/255, blue: 194/255, opacity: 0.3)
    func makeBody(configuration: Configuration) -> some View {
        return PrimaryButton(configuration: configuration
                             ,fillColor: fillColor)
    }
    
    struct PrimaryButton: View{
        let configuration: Configuration
        let fillColor: Color
        var body: some View{
            return configuration.label
                .padding(20)
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(fillColor))
            
        }
    }
}

struct PrimaryButtonStyle_Previews: PreviewProvider{
    static var previews: some View{
        Button(action: {}){
            Text("Login")
        }.buttonStyle(PrimaryButtonStyle())
    }
}
