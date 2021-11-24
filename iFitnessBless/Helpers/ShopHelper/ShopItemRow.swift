//
//  ShopItemRow.swift
//  iFitnessBless
//
//  Created by Blessme on 05.11.2021.
//

import SwiftUI

struct ShopItemRow: View {
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            VStack(alignment: .leading, spacing: 10){
                Text("🚀  Вводный курс. On ramp")
                    .font(.headline)
            //    Divider()
                
                HStack(spacing: 20) {
                    Text("📅  Расписание: ")
                        .font(.subheadline)
                    
                    Text("ПН-ПТ: 09:00 - 23:00")
                        .font(.subheadline)
                }
                
       //         Divider()
                HStack(spacing: 20){
                    Text("⛳️  Посещений: ")
                        .font(.subheadline)
                    Text("12")
                        .font(.subheadline)
                }
               
                
            }
            Button(action: {}){
                HStack(spacing: 50){
                    Text("Купить")
                    Text("12000 рублей")
                        .font(.headline)
                }
            }
            .foregroundColor(Color.white)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [.blue,.pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .clipShape(Rectangle())
                .cornerRadius(20)
                .shadow(color: .black, radius: 5, x: 0, y: 0)
           
        
        }
        .padding()
        
    }
}

struct ShopItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ShopItemRow()
    }
}
