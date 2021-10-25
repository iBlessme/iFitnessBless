//
//  TabBarView.swift
//  iFitnessBless
//
//  Created by Blessme on 25.10.2021.
//

import SwiftUI

struct TabBarView: View {
    
    init(){
      // UITabBar.appearance().backgroundColor = UIColor.gray
        UITabBar.appearance().unselectedItemTintColor = UIColor.systemIndigo
    }
    
    var body: some View {
        
            TabView{
                HomeView()
                    .tabItem(){
                        Text("Главная")
                        Image(systemName: "house.fill")
                            
                    }
                    .navigationTitle("Главная")
                ShopView()
                    .tabItem(){
                        Text("Магазин")
                        Image(systemName: "cart.fill")
                            
                    }
                TrainersView()
                    .tabItem(){
                        Text("Инструктора")
                        Image(systemName: "person.and.person.fill")
                            
                    }
                    
                
            }
            .accentColor(.purple)
            .font(.headline)
            
           
        }
    }


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
