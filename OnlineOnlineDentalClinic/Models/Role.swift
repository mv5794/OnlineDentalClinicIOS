//
//  Role.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/8/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import Foundation

struct Role: Codable {
    var id: Int
    var name: String
    var description: String
    
    init() {
        id = 0
        name = "Unnamed"
        description = "Unknown"
    }
    
}
