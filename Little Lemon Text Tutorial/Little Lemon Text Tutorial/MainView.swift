//
//  MainView.swift
//  Little Lemon Text Tutorial
//
//  Created by Samuel Mensa on 05/05/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    HStack(spacing: 8){
                        Text("Demo").scaledToFit().frame(width: 100, height: 100, alignment: .center)
                        VStack{
                            Text("Little Lemon").font(.title)
                            Text("Groundnut sauce, aubergine spiral, mango juice").font(.title3).multilineTextAlignment(.center)
                        }
                        .padding()
                    }
                    .padding()
//                    .background(.green)
                }
            }
        }
    }
}

#Preview {
    MainView()
}
