//
//  ReservationForm.swift
//  Little Lemon Text Tutorial
//
//  Created by Samuel Mensa on 04/05/2024.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName = ""
    var body: some View {
//        Form{
//            TextField("Type Your Name", text: $customerName,
//                      onEditingChanged: {status in
//               
//                print(status)
//            }
//            )
//            .onSubmit {
//                print("Text submitted")
//            }
//            .onChange(of: customerName, perform: {newValue in print(newValue)})
//        }
        ZStack() {
                    Circle()
                        .foregroundColor(Color.gray)
                    Circle()
                        .scale(x: 0.55, y: 0.55)
                        .foregroundColor(Color.red)
            VStack (alignment: .leading){
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                        Text ("Hello, world!")
                    .padding()
                Spacer()
                HStack(spacing: 50) {
                            Button("One"){}
                            Button("Two"){}
                        }
//                        .frame(maxHeight: .infinity, alignment: .top)
                    }
            .frame(maxWidth: .infinity, alignment: .trailing)
                    
                }
        
        
    }
}

#Preview {
    ReservationForm()
}
