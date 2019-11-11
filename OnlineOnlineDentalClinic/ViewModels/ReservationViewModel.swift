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
    
    var id : int_fast32_t {
        return self.reservation.id
    }
    
    var reservation_name: Date {
        return self.reservation.reservation_date
    }
    
    var estauts: String {
        return self.reservation.estatus
    }
    
    var dentist: Person {
        return self.reservation.dentist
    }
    
    var pacient: Person {
        return self.reservation.pacient
    }
    
    var idTreatment: int_fast32_t {
        return self.reservation.idTreatment
    }
    
    var observation: String{
        return self.reservation.observation
    }
    
}
