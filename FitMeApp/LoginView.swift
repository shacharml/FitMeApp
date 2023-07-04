//
//  LoginView.swift
//  FitMeApp
//
//  Created by Student30 on 04/07/2023.
//

import SwiftUI

struct LoginView: View {
    @Binding var currentShowingView: String
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    //password validation - Minimum 8 characters at least 1 Alphabet and 1 Number
    private func isValidPassword(_ password: String) -> Bool{
        let passwordRegex = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$")
        return passwordRegex.evaluate(with: password)
    }
    
    var body: some View {
        GeometryReader{ proxy in
            NavigationStack {
                VStack{
                    Spacer().frame(height: proxy.size.height * 0.35)
                    
                    //title - name of the App
                    Text("FitMeApp")
                        .font(.system(size: 56, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                 
                    Spacer()
                    
                    VStack{
                        //Mail Fild
                        HStack{
                            Image(systemName: "mail")
                                .foregroundColor(.black)
                            TextField("Email", text: $email)
                                .textContentType(.emailAddress)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            //validation for Email
                            if(email.count != 0 ){
                                Image(systemName:  email.isValidEmail() ? "checkmark" : "xmark")
                                    .fontWeight(.bold)
                                    .foregroundColor(email.isValidEmail() ? .green : .red)
                            }
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10) .foregroundColor(.white.opacity(0.85)))
                        .padding()
                        
                        //Password Fild
                        HStack{
                            Image(systemName: "lock")
                                .foregroundColor(.black)
                            SecureField("Password", text: $password)
                                .textContentType(.password)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            //Password Validation
                            if(password.count != 0 ){
                                Image(systemName:  isValidPassword(password) ? "checkmark" : "xmark")
                                    .fontWeight(.bold)
                                    .foregroundColor(isValidPassword(password) ? .green : .red)
                            }
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10) .foregroundColor(.white.opacity(0.85)))
                       // .overlay( RoundedRectangle(cornerRadius: 10) .foregroundColor(.white.opacity(0.3)))
                        .padding()
                    }
                    
                    Spacer()
                    
                    //Login button
                    Button(action: {}){
                        HStack{
                            Spacer()
                            Text("Login")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                            Spacer()
                        }
                    }.padding(.horizontal, 15)
                        .buttonStyle(PrimaryButtonStyle())
                    
                   //goto signup button
                    Button(action: { withAnimation{self.currentShowingView = "signup"}}){
                        Text("Don't have an Account?")
                            .foregroundColor(.white)
                    }
                    
                }
                .padding(.bottom, 15)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    Image("strong-woman")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(Color.black.opacity(0.4))
                        .edgesIgnoringSafeArea(.all)
                )
            }
            
            
            
        }
    }
}

/**
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}*/
