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
        self.reservations = [ReservationViewModel(reservation: Reservation()),
                                 ReservationViewModel(reservation: Reservation()),
                                 ReservationViewModel(reservation: Reservation())]
    }
    
}
	
