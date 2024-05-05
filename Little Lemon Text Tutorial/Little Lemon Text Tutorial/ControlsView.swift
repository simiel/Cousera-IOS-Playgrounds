//
//  ControlsView.swift
//  Little Lemon Text Tutorial
//
//  Created by Samuel Mensa on 05/05/2024.
//

import SwiftUI

struct ControlsView: View {
    @State var isShowing = true
    @State private var value = 1
    @State private var size: CGFloat = 0.1
    @State var selectedDate = Date()
    var dateClosedRange: ClosedRange<Date> {
            let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
            let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
            return min...max
        }
    
    var body: some View {
        NavigationView {
                    VStack {
                        Text("Current value: \(value)")
                        Stepper("Number of guests", value: $value, in:1...20)
                        
                        Button(role: .destructive) {
                                    print("destroy something!")
                                    print(selectedDate)
                            print("current number of giests is \(value)")
                                } label: {
                                    HStack {
                                        Image(systemName: "trash")
                                        Text("jdjdfjd")
                                    }
                                }
                        
                        Toggle(isOn: $isShowing) {
                                        Text("Toggle item")
                                }
                        
                        Text("Little Lemon").font(.system(size: size * 200))
                        
                        Slider(value: $size)
                        
                        DatePicker(
                                                selection: $selectedDate,
                                                in: dateClosedRange,
                                                displayedComponents: .date,
                                                label: { Text("Due Date") }
                                            )
                        
                        Label("Menu", systemImage: "fork.knife")
                                    .labelStyle(.titleAndIcon)
                    }
                    .padding()
            
                .navigationTitle("Reservation form")
            
            
                }
    }
}

#Preview {
    ControlsView()
}
