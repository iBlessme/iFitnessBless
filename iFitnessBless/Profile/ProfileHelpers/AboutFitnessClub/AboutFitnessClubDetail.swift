//
//  AboutFitnessClubDetail.swift
//  iFitnessBless
//
//  Created by Blessme on 26.10.2021.
//

import SwiftUI

struct AboutFitnessClubDetail: View {
    var body: some View {
        VStack{
            
            HStack(){
                Image("РЭУ")
                    .renderingMode(.original)
                    .resizable(resizingMode: .stretch)
                    .frame(width: 100, height: 100)
                
                VStack(alignment: .leading) {
                    Text("iFitnes Фитнес-клуб")
                        .font(.headline)
                    Text("Москва")
                        .font(.subheadline)
                }
            }
            Divider()
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 5){
                    AboutClubImageRow()
                }
            }
            Divider()
            List{
                Label("+7-965-29-892-07", systemImage: "phone.fill")
                    .foregroundColor(.purple)
                
                Label("ПН-ВС: 10:00 - 23:00", systemImage: "calendar")
                    .foregroundColor(.purple)
                
                Label("https://github.com/iBlessme", systemImage: "network")
                    .foregroundColor(.purple)
            }
            
            
        }
    }
}

struct AboutFitnessClubDetail_Previews: PreviewProvider {
    static var previews: some View {
        AboutFitnessClubDetail()
    }
}
