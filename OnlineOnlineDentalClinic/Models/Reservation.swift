//
//  Reservation.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/8/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import Foundation

struct Reservation: Codable {
    var id: int_fast32_t
    var reservation_date: Date
    var estatus: String
    var dentist : Person
    var pacient: Person
    var idTreatment: int_fast32_t
    var observation: String


init() {
    id = 0
    reservation_date = Date()
    estatus = "Unnamed"
    dentist = Person()
    pacient = Person()
    idTreatment = 0
    observation = ""
    }}
