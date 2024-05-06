//
//  ContentView.swift
//  AdvancedSwiftUIW3
//
//  Created by Samuel Mensa on 05/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Exercise 1.")
                NavigationLink( destination: MyTabView()){
                    Text("Do something")
                }
            }
            .navigationTitle("Little Lemon")
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
