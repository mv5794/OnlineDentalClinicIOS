//
//  Reservation.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/8/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import Foundation

struct ReservationViewModel: Identifiable {
    var reservation: Reservation
    
    var id : Int {
        return self.reservation.id
    }
    
    var reservation_date: String {
        return self.reservation.reservation_date
    }
    
    var estauts: String {
        return self.reservation.estatus
    }
    
    var dentist: Int {
        return self.reservation.idDentist
    }
    
    var pacient: Int {
        return self.reservation.idPacient
    }
    
    var idTreatment: Int {
        return self.reservation.idTreatment
    }
    
    var observation: String{
        return self.reservation.observation
    }
    
}
