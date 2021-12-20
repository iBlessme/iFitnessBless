//
//  ShopView.swift
//  iFitnessBless
//
//  Created by Blessme on 25.10.2021.
//

import SwiftUI

struct ShopView: View {
//    @State var abonements: [Abonement] = []
   
    
    var body: some View {
        NavigationView(){
            ShopItem()
            .navigationTitle("Магазин")
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
