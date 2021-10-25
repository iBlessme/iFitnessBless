//
//  HomeView.swift
//  iFitnessBless
//
//  Created by Blessme on 25.10.2021.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showProfile = false
    
    var body: some View {
        NavigationView{
        HomeDetails()
                .navigationTitle("Главная")
               // .navigationBarTitleDisplayMode(.inline)
                
                .toolbar{
                    Button(action: {showProfile.toggle() }){
                        Image(systemName: "person.crop.circle")
                            .foregroundColor(.purple)
                            .accessibilityLabel("Профиль")
                    }
                }
                .sheet(isPresented: $showProfile){
                    ProfileDetails()
                }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
