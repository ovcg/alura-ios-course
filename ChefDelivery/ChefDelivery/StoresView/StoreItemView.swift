//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Otávio Gomes on 30/04/25.
//

import SwiftUI

struct StoreItemView: View {
    let orderType: OrderType
    
    var body: some View {
        HStack {
            Image(orderType.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            VStack {
                Text(orderType.name)
            }
            Spacer()
        }
    
    }
}

#Preview {
    StoreItemView(orderType: storesMock[0])
}
