//
//  AboutClubImageRow.swift
//  iFitnessBless
//
//  Created by Blessme on 26.10.2021.
//

import SwiftUI

struct AboutClubImageRow: View {
    var body: some View {
        Image("img1")
            .resizable()
            .scaledToFill()
            .frame(height: 200)
            .clipped()
            .clipShape(Rectangle())
            .cornerRadius(20)
        Image("img2")
            .resizable()
            .scaledToFill()
            .frame(height: 200)
            .clipped()
            .clipShape(Rectangle())
            .cornerRadius(20)
        Image("img3")
            .resizable()
            .scaledToFill()
            .frame(height: 200)
            .clipped()
            .clipShape(Rectangle())
            .cornerRadius(20)
    }
}

struct AboutClubImageRow_Previews: PreviewProvider {
    static var previews: some View {
        AboutClubImageRow()
    }
}
