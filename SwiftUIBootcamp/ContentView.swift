//
//  ContentView.swift
//  SwiftUIBootcamp
//
//  Created by Gemini Child on 24/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State var notified: String = "Disabled"
    @State var disabled: Bool = true
    var body: some View{
        VStack{
            LoginView()
//            Text("Notification: \(disabled ? "Enabled": "Disabled")")
//            Toggle(isOn: $disabled, label: {
//                HStack{
//                    Image(systemName: "bell.fill")
//                        .foregroundColor(.green)
//                    Text("Notification Status")
//                }
//            })
        }.padding()
        Spacer()
    }
       
}

#Preview {
    ContentView()
}
