//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Otávio Gomes on 29/04/25.
//

import SwiftUI

struct CarouselTabView: View {
    
    let ordersMock: [OrderType] = [
        OrderType(id: 1, name: "banner burguer", image: "barbecue-banner"),
        OrderType(id: 2, name: "banner brazilian", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "banner pokes", image: "pokes-banner"),
    ]
    var body: some View {
        TabView {
            ForEach(ordersMock) { order in
                CarouselItemView(order: order)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselTabView()
}
