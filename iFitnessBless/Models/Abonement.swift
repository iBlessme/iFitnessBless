//
//  Abonement.swift
//  iFitnessBless
//
//  Created by iBlessme on 29.11.2021.
//

import Foundation

struct Abonements: Hashable, Codable{
    public var id: Int
    public var name_abonement, cost_abonement, date_start, date_finish: String
    public var bonus_programms_id: Int
     public var bonus: BonusProgram
    
}
