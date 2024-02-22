//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Thorsten Hindermann on 21.02.24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"];
    var selected = "Archery";
    var body: some View {
        VStack {
            Text("Why not try...")
                .font(.largeTitle.bold())
            
            VStack{
                Circle()
                    .fill(.blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size:144))
                            .foregroundColor(.white)
                    )
                
                Text("\(selected)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    ContentView()
}
