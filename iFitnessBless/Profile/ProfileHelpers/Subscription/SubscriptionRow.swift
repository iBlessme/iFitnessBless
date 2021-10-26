//
//  SubscriptionRow.swift
//  iFitnessBless
//
//  Created by Blessme on 26.10.2021.
//

import SwiftUI

struct SubscriptionRow: View {
    
   @State private var showSubscription = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("🏃🏾‍♂️ Вводный курс.")
                .font(.title)
            
            Text("ПН-ВС: 10:00-23:00")
                .font(.subheadline)
            HStack{
                Text("Срок действия")
                    .foregroundColor(.gray)
                Divider()
                Text("14 октября 2023")
                    .foregroundColor(.purple)
            }
            .frame(height: 30)
            
        }
        VStack(alignment: .leading, spacing: 10) {
            Text("🏀 Секция 'Баскетбол'.")
                .font(.title)
            
            Text("ПН-ВС: 10:00-23:00")
                .font(.subheadline)
            HStack{
                Text("Срок действия")
                    .foregroundColor(.gray)
                Divider()
                Text("14 октября 2023")
                    .foregroundColor(.purple)
            }
            .frame(height: 30)
            
        }
    }
    
}

struct SubscriptionRow_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionRow()
    }
}
