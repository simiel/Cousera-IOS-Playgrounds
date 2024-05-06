//
//  MyTabView.swift
//  AdvancedSwiftUIW3
//
//  Created by Samuel Mensa on 05/05/2024.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        VStack{
            TabView{
                Text("Tab 1")
                    .tabItem({
                        Label("Share", systemImage: "square.and.arrow.up")
                    })
                Text("Tab 2")
                    .tabItem({
                        Label("Trash", systemImage: "trash")
                    })
            }
        }
    }
}

#Preview {
    MyTabView()
}
