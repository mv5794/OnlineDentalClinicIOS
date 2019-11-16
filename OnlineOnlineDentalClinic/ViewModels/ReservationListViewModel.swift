//
//  ReservationListViewModel.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/8/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import Foundation

class ReservationListViewModel: ObservableObject {
    @Published var reservations = [ReservationViewModel]()
    
    init() {
        var res1 = Reservation()
        res1.id = 1
        res1.dentist.lastname = "Gonzales"
        var res2 = Reservation()
        res2.id = 2
        res2.dentist.lastname = "Ramirez"
        
        self.reservations = [ReservationViewModel(reservation: res1),
                             ReservationViewModel(reservation: res2)]
    }
    
}
	
