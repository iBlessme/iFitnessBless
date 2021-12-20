//
//  PositionWorkModel.swift
//  iFitnessBless
//
//  Created by iBlessme on 30.11.2021.
//

import Foundation

public class PositionWorkModel: ObservableObject{
    @Published var positions: [PositionWork] = []
    
    func fetch(completion: @escaping ([PositionWork]) -> ()){
        guard let url = URL(string: "http://127.0.0.1:8000/api/positionWork") else {
            print("Неправильная строка подключения")
            return
        }
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            if let data = data {
                let decodeList = try! JSONDecoder().decode([PositionWork].self, from: data)
                DispatchQueue.main.async {
                    completion(decodeList)
                }
            }else{
                print("Нет данных в БД")
            }
            
        }
        .resume()
        
    }
    
    
}
