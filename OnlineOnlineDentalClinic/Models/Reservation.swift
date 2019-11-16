//
//  Reservation.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/8/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import Foundation

struct Reservation: Codable {
    var id: Int
    var reservation_date: Date
    var estatus: String
    var idDentalPiece : Int
    var dentist : Person
    var pacient: Person
    var idTreatment: Int
    var observation: String


init() {
    id = 0
    reservation_date = Date()
    estatus = "Unnamed"
    idDentalPiece = 0
    dentist = Person()
    pacient = Person()
    idTreatment = 0
    observation = ""
    }}
