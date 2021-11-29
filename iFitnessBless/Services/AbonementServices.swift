//
//  AbonementServices.swift
//  iFitnessBless
//
//  Created by iBlessme on 26.11.2021.
//

import Foundation
import Combine

final class AbonementSession: ObservableObject{
    
    @Published var name = "test"
    
    
    func getAbonement(completion: @escaping ([Abonement]) -> ()){
        guard let url = URL(string: "http://127.0.0.1:8000/api/abonement") else {return}
        
        URLSession.shared.dataTask(with: url){ (data, _, _) in
            
            let abonements = try! JSONDecoder().decode([Abonement].self, from: data!)
            DispatchQueue.main.async {
                completion(abonements)
            }
        }
        .resume()
    }
}
