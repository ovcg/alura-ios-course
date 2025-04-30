//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Otávio Gomes on 30/04/25.
//

import SwiftUI

struct StoresContainerView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Lojas")
                .font(.headline)
            
            VStack(alignment: .leading) {
                ForEach(storesMock) { store in
                    StoreItemView(orderType: store)
                }
            }
        }.padding(20)
    }
}

#Preview {
    StoresContainerView()
}
