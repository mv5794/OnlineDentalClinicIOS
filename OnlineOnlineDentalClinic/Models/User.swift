//
//  User.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/21/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import Foundation

struct User: Codable {
    var id: Int
    var cod_user: String
    var idPerson: Int
    var password: String
    
    init() {
        id = 1
        cod_user = "username"
        idPerson = 0
        password = "password"
    }
    
}
