//
//  ShopDetails.swift
//  iFitnessBless
//
//  Created by Blessme on 05.11.2021.
//

import SwiftUI

struct ShopDetails: View {
    var body: some View {
        NavigationView{
            ShopRow()
                .navigationTitle("Магазин")
        }
    }
}

struct ShopDetails_Previews: PreviewProvider {
    static var previews: some View {
        ShopDetails()
    }
}
