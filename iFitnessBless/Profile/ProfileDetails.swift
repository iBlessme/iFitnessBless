//
//  ProfileDetails.swift
//  iFitnessBless
//
//  Created by Blessme on 26.10.2021.
//

import SwiftUI

struct ProfileDetails: View {
    
    @State private var isLogin = false
    
    var body: some View {
        NavigationView{
            List{
                Text("имя и фалилия")
                    .font(.headline)
                
                Text("Номер телефона")
                    .font(.headline)
                
                NavigationLink(destination: SubscriptionDetail()){
                    Image(systemName: "calendar")
                        .foregroundColor(.purple)
                    Text("Мои абонементы")
                        .foregroundColor(.purple)
                    
                }
                
                NavigationLink(destination: AboutFitnessClubDetail()){
                    Image(systemName: "sportscourt.fill")
                        .foregroundColor(.purple)
                    Text("Фитнес-клуб")
                        .foregroundColor(.purple)
                }
                .foregroundColor(.purple)
                
                NavigationLink(destination: AboutAppView()){
                    Image(systemName: "laptopcomputer.and.iphone")
                        .foregroundColor(.purple)
                    Text("О приложении")
                        .foregroundColor(.purple)
                }
                Button(action: {}){
                    Label("Выйти", systemImage: "rectangle.portrait.and.arrow.right.fill")
                        .foregroundColor(.red)
                }
                

               
                }
                .navigationTitle("Профиль")
        }
    }
}

struct ProfileDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetails()
    }
}
