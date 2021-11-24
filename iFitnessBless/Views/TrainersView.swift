//
//  TrainersView.swift
//  iFitnessBless
//
//  Created by Blessme on 25.10.2021.
//

import SwiftUI

struct TrainersView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(1..<20){ index in
                TrainerItem()
                }
            }
                .navigationTitle("Инструктора")
        }
    }
}

struct TrainersView_Previews: PreviewProvider {
    static var previews: some View {
        TrainersView()
    }
}
