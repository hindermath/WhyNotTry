//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Thorsten Hindermann on 21.02.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Circle()
                .fill(.blue)
                .padding()
                .overlay(
                    Image(systemName: "figure.archery")
                        .font(.system(size:144))
                        .foregroundColor(.white)
                )
            
            Text("Archery")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ContentView()
}
