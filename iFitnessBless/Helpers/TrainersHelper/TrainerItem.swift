//
//  TrainerItem.swift
//  iFitnessBless
//
//  Created by Blessme on 24.11.2021.
//

import SwiftUI

struct TrainerItem: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("🏃🏾‍♂️")
                Text("Евгений Королев")
                    .font(.headline)
            }
            Text("Тренер по легкой атлетике")
                .font(.subheadline)
        }
    }
}

struct TrainerItem_Previews: PreviewProvider {
    static var previews: some View {
        TrainerItem()
    }
}
