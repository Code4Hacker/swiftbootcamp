//
//  LoginView.swift
//  SwiftUIBootcamp
//
//  Created by Gemini Child on 25/02/2024.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack{
            Spacer()
            Image(systemName: "baseball.fill")
                .resizable()
                .frame(width: 120, height: 120)
                .foregroundColor(.black)
                .padding(.bottom, 50)
            
            TextField("Username", text: $email)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(10)
                .keyboardType(.emailAddress)
                .foregroundColor(.black)
                .tint(.white)
            SecureField("Password", text: $password)
                .padding()
                .keyboardType(.phonePad)
                .background(Color(.systemGroupedBackground))
                .cornerRadius(10)
                .foregroundColor(.black)
                .tint(.white)
            HStack{
                Spacer()
                Text("Forget Password?")
                    .font(.subheadline)
                    .padding(.vertical)
            }.foregroundColor(.accentColor)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack{
                    Rectangle()
                        .frame(height: 50)
                        .cornerRadius(10)
                    
                    Text("Login")
                        .foregroundColor(.white)
                }
            })
            ZStack{
                Divider()
                Text("OR")
                    .padding(.horizontal)
                    .background(.white)
                    .font(.caption)
                    .foregroundColor(.gray)
            }.padding(.vertical)
            
            HStack{
                Image(systemName: "f.circle.fill")
                Text("Connect with  Facebook")
                    .font(.subheadline)
            }.foregroundColor(.accentColor)
            Spacer()
            Divider()
            HStack{
                Text("Don't have an account?")
                    .font(.subheadline)
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }.foregroundColor(.accentColor)
            
        }.padding()
    }
}
