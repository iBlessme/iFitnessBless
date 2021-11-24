//
//  ShopRow.swift
//  iFitnessBless
//
//  Created by Blessme on 05.11.2021.
//

import SwiftUI

struct ShopRow: View {
    var body: some View {
      
            List{
                ShopItemRow()
               
                ShopItemRow()
            }
            
        }
    }

struct ShopRow_Previews: PreviewProvider {
    static var previews: some View {
        ShopRow()
    }
}
