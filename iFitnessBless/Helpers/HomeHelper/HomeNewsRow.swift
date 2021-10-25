//
//  HomeNewsRow.swift
//  iFitnessBless
//
//  Created by Blessme on 25.10.2021.
//

import SwiftUI

struct HomeNewsRow: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Новости")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 5){
                    HomeNewsItems()
                }
            }
        }
    }
}

struct HomeNewsRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeNewsRow()
    }
}
