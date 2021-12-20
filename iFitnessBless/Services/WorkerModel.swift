//
//  WorkerModel.swift
//  iFitnessBless
//
//  Created by iBlessme on 30.11.2021.
//

import Foundation

public class WorkerModel: ObservableObject{
    @Published var workers: [Worker] = []
    
    func fetch(completion: @escaping ([Worker]) -> ()){
        guard let url = URL(string: "http://127.0.0.1:8000/api/workers") else {
            print("Не удалось подключится к ссылки")
            return
        }
        URLSession.shared.dataTask(with: url){(data, response, error) in
        
            if let data = data {
                let decodeList = try! JSONDecoder().decode([Worker].self, from: data)
                print(decodeList)
                DispatchQueue.main.async {
                    completion(decodeList)
                }
            }
            else{
                print("Нет данных от БД")
            }
            
        }
        .resume()
                
    }
}
