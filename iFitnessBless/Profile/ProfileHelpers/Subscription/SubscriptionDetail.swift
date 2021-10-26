//
//  SubscriptionDetail.swift
//  iFitnessBless
//
//  Created by Blessme on 26.10.2021.
//

import SwiftUI

struct SubscriptionDetail: View {
    var body: some View {
        NavigationView{
            List(){
                SubscriptionRow()
            }
            .listStyle(.grouped)
            .navigationTitle("Мои абонементы")
        }
    }
}

struct SubscriptionDetail_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionDetail()
    }
}
