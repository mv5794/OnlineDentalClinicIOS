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
    var reservation_date: String
    var estatus: String
    var idDentalPiece: Int
    var idDentist: Int
    var idPacient: Int
    var idTreatment: Int
    var observation: String


init() {
    id = 0
    reservation_date = ""
    estatus = "Unnamed"
    idDentalPiece = 0
    idDentist = 0
    idPacient = 0
    idTreatment = 0
    observation = ""
    }}
