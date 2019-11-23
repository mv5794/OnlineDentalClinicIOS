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
    var dni: Int
    var phone: String
    var mail: String
    var picture: String
    var gender: String
    var idRole: Int
    var address: String

init() {
    id = 0
    name = "Pepito"
    lastname = "Perez"
    dni = 1
    phone = "999999999"
    mail = "a@abc"
    picture = "a"
    gender = "male"
    idRole  = 0
    address = "aa 123 ab"
    }}
