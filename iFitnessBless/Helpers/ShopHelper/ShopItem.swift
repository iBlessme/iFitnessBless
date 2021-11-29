//
//  ShopItem.swift
//  iFitnessBless
//
//  Created by iBlessme on 29.11.2021.
//

import SwiftUI

struct ShopItem: View {
    @State var abonementModel = [Abonements]()
    var body: some View {
        VStack{
            List(abonementModel, id: \.self){abonement in
                VStack(){
                    Text(abonement.name_abonement)
                    Text(abonement.cost_abonement)
                }
               
            }
            .onAppear(){
                AbonementModel().fetch{abonements in
                    self.abonementModel = abonements
                }
            }
            
        }
    }
}

struct ShopItem_Previews: PreviewProvider {
    static var previews: some View {
        ShopItem()
    }
}
