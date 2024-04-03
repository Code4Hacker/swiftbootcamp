//
//  ListFollowCard.swift
//  SwiftUIBootcamp
//
//  Created by Gemini Child on 24/02/2024.
//

import Foundation
import SwiftUI


struct ListFollowCard: View {
    var userImg: String?
    let username: String
    let actualNM: String
    let status: Bool
    var body: some View {
        HStack{
            Image(userImg!)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading){
                Text(username)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(actualNM)
            }
            Spacer()
            if status {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray ,lineWidth: 2)
                        .frame(width:120, height: 40)
                    Text("Following")
                }.foregroundColor(.gray)
            }else{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray ,lineWidth: 2)
                        .frame(width:120, height: 40)
                        .font(.subheadline)
                    Text("Follow")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                }
            }
        }
        Divider()
    }
}
