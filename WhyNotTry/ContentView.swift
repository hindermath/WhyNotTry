//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Thorsten Hindermann on 21.02.24.
//
// Source of tutorial
// https://www.swift.org/getting-started/swiftui/
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    @State private var selected = "Archery"
    @State private var id = 1
    var c = Circle()
    var body: some View {
        VStack {
            Text("Why not try...")
                .font(.largeTitle.bold())
            
            VStack{
                //Circle()
                c
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size:144))
                            .foregroundColor(.white)
                            .accessibilityLabel("\(selected) in a")
                    )
                Text("\(selected)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }.transition(.slide)
                .id(id)
            
            Spacer()
            
            Button("Try again...") {
                withAnimation(.easeInOut(duration: 1)) {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                }
                
            }.buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
