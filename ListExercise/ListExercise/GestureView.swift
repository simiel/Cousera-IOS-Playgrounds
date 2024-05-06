//
//  GestureView.swift
//  ListExercise
//
//  Created by Samuel Mensa on 06/05/2024.
//

import SwiftUI

struct GestureView: View {
    @State var flag = false
    
    var body: some View {
        Text("Tap me!")
            .foregroundColor(.white)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .background(flag ? Color.green: Color.yellow)
            .onTapGesture {
                flag.toggle()
            }
    }
}

#Preview {
    GestureView()
}
