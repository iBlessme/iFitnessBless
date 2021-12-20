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
                VStack(alignment: .center, spacing: 30) {
                    VStack(alignment: .leading, spacing: 10){
                        Text("🚀 \(abonement.name_abonement)")
                            .font(.headline)
                        HStack(spacing: 20) {
                            Text("📅  Расписание: ")
                                .font(.subheadline)
                            VStack(alignment: .leading) {
                                Text("C:   \(abonement.date_start)")
                                    .font(.subheadline)
                                Text("До: \(abonement.date_finish)")
                                    .font(.subheadline)
                            }
                        }
                        HStack(spacing: 20){
                            Text("⛳️  Посещений: ")
                                .font(.subheadline)
                            Text("12")
                                .font(.subheadline)
                        }
                    }
                    Button(action: {}){
                        HStack(spacing: 50){
                            Text("Цена")
                            Text("\(abonement.cost_abonement) рублей")
                                .font(.headline)
                                
                        }
                    }
                    .foregroundColor(Color.white)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [.blue,.pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .clipShape(Rectangle())
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 1, x: 5, y: 5)
                }.padding()
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
