//
//  LoginView.swift
//  iFitnessBless
//
//  Created by iBlessme on 17.12.2021.
//

import SwiftUI

struct LoginView: View {
    @State var login = String()
    @State var password = String()
    @State private var showProfile = false
    var body: some View {
            VStack{
                TextField("Логин", text: $login)
                    .frame(width: 300)
                    .padding()
                TextField("Пароль", text: $password)
                    
                    .frame(width: 300)
                    .padding()
                Button("Войти"){
                    showProfile.toggle()
                }
                .sheet(isPresented: $showProfile){
                    ProfileDetails()
                }
            }
            .padding()
        }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
