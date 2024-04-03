//
//  Level2.swift
//  SwiftUIBootcamp
//
//  Created by Gemini Child on 25/02/2024.
//

import SwiftUI

struct Level2: View {
    let demo:[UserProfileModal] = [
        .init(image: "user1", username: "Adam Smith", bio: "Lpsum first User on the board"),
        .init(image: "user2", username: "Gemini Child", bio: "Lorem Ipsum first User on the board"),
        .init(image: "user3", username: "Rodrigue", bio: "Ipsum first User on the board"),
        .init(image: "user1", username: "Henry Jackson", bio: "Lorem Ipsum User on the board")
    ]
    
    var body: some View {
        Spacer()
        List{
            ForEach(demo){ data in
                CardProfile(profile: data)
            }
        }.listStyle(PlainListStyle())
    }
}
struct UserProfileModal: Identifiable{
    let id = NSUUID().uuidString
    let image: String
    let username: String
    let bio: String
}

#Preview {
    Level2()
}
