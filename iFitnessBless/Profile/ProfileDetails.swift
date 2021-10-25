//
//  ProfileDetails.swift
//  iFitnessBless
//
//  Created by Blessme on 26.10.2021.
//

import SwiftUI

struct ProfileDetails: View {
    var body: some View {
        NavigationView{
            List{
                Text("имя и фалилия")
                
                Text("Номер телефона")
                
                Button(action: {}){
                    Label("Абонементы ", systemImage: "calendar")
                        .foregroundColor(.purple)
                    }
                }
                .navigationTitle("Здравствуйте")
        }
    }
}

struct ProfileDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetails()
    }
}
