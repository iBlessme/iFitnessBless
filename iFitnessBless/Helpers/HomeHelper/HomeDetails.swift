//
//  HomeDetails.swift
//  iFitnessBless
//
//  Created by Blessme on 25.10.2021.
//

import SwiftUI

struct HomeDetails: View {
    var body: some View {
        VStack{
            HomeNewsRow()
                .padding(.leading, 5)
           // Spacer()
            VStack(alignment: .leading) {
                Text("Адрес:")
                    .font(.headline)
                    .padding(.leading, 15)
                    .padding(.top, 5)
                Text("Наш зал находится по адресу: Московский приборостроительный техникум им. Г.В. Плеханова, Нахимовский пр., 21")
                    .font(.subheadline)
                    .padding(.leading, 15)
                    .padding(.top, 5)
                Divider()
                HomeMapHall()
                
            }
        }
    }
}

struct HomeDetails_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetails()
    }
}
