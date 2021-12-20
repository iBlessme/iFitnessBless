//
//  UserClubModel.swift
//  iFitnessBless
//
//  Created by iBlessme on 30.11.2021.
//

import Foundation

public class UserClubModel: ObservableObject{
    @Published var users: [UserClub] = []
    
    func fetch(completion: @escaping ([UserClub]) -> ()){
        guard let url = URL(string: "http://127.0.0.1:8000/api/userClub") else {
            print("Не удалось подключиться к ссылке")
            return
        }
        URLSession.shared.dataTask(with: url){(data, response, error) in
            if let data = data {
                let decodeList = try! JSONDecoder().decode([UserClub].self, from: data)
                DispatchQueue.main.async {
                    completion(decodeList)
                }
            }
            else{
                print("Нет данных в БД")
            }
            
        }
        .resume()
    }
    
}
