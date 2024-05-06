//
//  ContentView.swift
//  ListExercise
//
//  Created by Samuel Mensa on 06/05/2024.
//

import SwiftUI



struct ContentView: View {
    struct Item:Identifiable{
        let id = UUID()
        let name:String
    }
    
    @ObservedObject var model = Model()
    
    class Model: ObservableObject{
        @Published var meals:[Item] = menuGeneration()
        
        static func menuGeneration()->[Item]{
            return [
                Item(name: "Lasagna"),
                           Item(name: "Fettuccini Alfredo"),
                           Item(name: "Spaghetti"),
                           Item(name: "Avocado Toast"),
                           Item(name: "Tortellini"),
                           Item(name: "Pizza")
            ]
        }
    }
    
    
    var body: some View {
        VStack {
            List{
                ForEach(model.meals) {
                    item in
                    Text(item.name)
                    Text(item.name)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
