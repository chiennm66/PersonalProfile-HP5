//
//  DataModels.swift
//  PersonalProfile
//
//  Created by CHIEN on 19/7/25.
//

import Foundation



struct User{
    var name :String
    var avatar :String
    var email: String
    var profileCompletion: Double
    var interests : [String]
    var achiements : [Achiements]
 
}


struct Achiements{
    var icon :String
    var title :String
    var description :String
}


// xong chay lên done Data
