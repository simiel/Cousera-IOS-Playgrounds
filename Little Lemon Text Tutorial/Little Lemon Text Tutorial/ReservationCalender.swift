//
//  ReservationCalender.swift
//  Little Lemon Text Tutorial
//
//  Created by Samuel Mensa on 05/05/2024.
//

import SwiftUI

struct ReservationCalender: View {
    @State var reservedDate = Date()
    var body: some View {
        Form{
            HStack{
                DatePicker("", selection: $reservedDate, in: Date()..., displayedComponents: [.date, .hourAndMinute])
                
                Button(action: {}){
                    HStack{
                        Image(systemName: "arrow.right.circle")
                        Text("Reserve")
                    }
                }
                .padding(20)
            }
            Text("The selected date for reservation is \(reservedDate.formatted(date: .long, time: .complete))")
        }
    }
}

#Preview {
    ReservationCalender()
}
