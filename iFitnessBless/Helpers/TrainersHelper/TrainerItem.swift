//
//  TrainerItem.swift
//  iFitnessBless
//
//  Created by Blessme on 24.11.2021.
//

import SwiftUI

struct TrainerItem: View {
    @State var workerModel = [Worker]()
    
    var body: some View {
        VStack{
        List(workerModel, id: \.self){workers in
        VStack(alignment: .leading){
                HStack{
                    Text("🏃🏾‍♂️\(workers.user_club.surname) \(workers.user_club.name_user) \(workers.user_club.thirdname)")
                        .font(.system(size: 16))
                }
            Text("😎 \(workers.position_work.name_position)")
                    .font(.headline)
            Text("Номер телефона: \(workers.user_club.phone_number)")
                }
            }
        .onAppear(){
            WorkerModel().fetch{workers in
                self.workerModel = workers
                }
            }
        }
    }
}

struct TrainerItem_Previews: PreviewProvider {
    static var previews: some View {
        TrainerItem()
    }
}
