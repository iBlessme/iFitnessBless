//
//  ShopItemRow.swift
//  iFitnessBless
//
//  Created by Blessme on 05.11.2021.
//
import Combine
import Foundation
import SwiftUI

struct ShopItemRow: View {
        @State var abonementModel = [Abonements]()
     
    
    
    var body: some View {
      
        VStack(alignment: .center, spacing: 30) {
            VStack(alignment: .leading, spacing: 10){
                Text("🚀  ")
                    .font(.headline)
            //    Divider()
                
                HStack(spacing: 20) {
                    Text("📅  Расписание: ")
                        .font(.subheadline)
                    
                    Text("ПН-ПТ: распиание")
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
                .shadow(color: .gray, radius: 1, x: 5, y: 5)
           
        
            }
        .padding()
        .onAppear(){
            AbonementModel().fetch{abonements in
                self.abonementModel = abonements
            }
            }
        }
    }

struct ShopItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ShopItemRow()
    }
}
