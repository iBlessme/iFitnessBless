//
//  Worker.swift
//  iFitnessBless
//
//  Created by iBlessme on 30.11.2021.
//

import Foundation

struct Worker: Codable, Hashable {
    var id: Int
    var salary: String
    var position_works_id, user_clubs_id: Int
//    var created_at, updated_at: String
    var position_work: PositionWork
    var user_club: UserClub
}

