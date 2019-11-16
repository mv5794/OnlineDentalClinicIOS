//
//  Person.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/8/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import Foundation

struct Person: Codable {
    var id: Int
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
    name = "Pepito"
    lastname = "Perez"
    dni = "00000000"
    phone = "999999999"
    mail = "a@abc"
    picture = ""
    gender = "male"
    role  = Role()
    address = "aa 123 ab"
    }}
