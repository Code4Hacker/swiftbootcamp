//
//  CardProfile.swift
//  SwiftUIBootcamp
//
//  Created by Gemini Child on 24/02/2024.
//

import Foundation
import SwiftUI

struct CardProfile: View {
    let profile: UserProfileModal
    var body: some View {
        VStack(alignment: .leading){
            Image(profile.image)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipShape(Rectangle())
                .cornerRadius(10)
            Text(profile.username)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text(profile.bio)
        }.padding(.vertical, 6)
    }
}
