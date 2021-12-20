//
//  UserClub.swift
//  iFitnessBless
//
//  Created by iBlessme on 30.11.2021.
//

import Foundation

//UserClub
struct UserClub: Codable, Hashable {
    var id: Int
    var name_user, surname, thirdname, passport_number: String
    var passport_serial, snils, phone_number, login: String
    var password, birth_day: String
//    var  created_at, updated_at: String
}
