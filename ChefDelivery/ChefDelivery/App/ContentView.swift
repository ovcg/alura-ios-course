//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Otávio Gomes on 29/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    OrderTypeGridView()
                    CarouselTabView()
                    StoresContainerView()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
