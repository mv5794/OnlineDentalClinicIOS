//
//  Person.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/8/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import Foundation

struct Person: Codable {
    var id: int_fast32_t
    var name: String
    var lastname: String
    var dni : String
    var phone: String
    var mail: String
    var picture: String
    var gender: String
    var role: Role
    var address: String

init() {
    id = 0
    name = "Unnamed"
    lastname = "Unnamed"
    dni = ""
    phone = ""
    mail = ""
    picture = ""
    gender = ""
    role  = Role()
    address = ""
    }}
