//
//  AboutAppView.swift
//  iFitnessBless
//
//  Created by Blessme on 26.10.2021.
//

import SwiftUI

struct AboutAppView: View {
    var body: some View {
        VStack{
            Image("ico")
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .clipShape(Rectangle())
                .cornerRadius(10)
                .shadow(radius: 10)
            
            Text("Версия 0.0.1")
                .font(.headline)
        }
    }
}

struct AboutAppView_Previews: PreviewProvider {
    static var previews: some View {
        AboutAppView()
    }
}
