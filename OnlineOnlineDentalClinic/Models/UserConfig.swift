//
//  UserConfig.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/21/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import Foundation

class UserConfig: ObservableObject {
    @Published var user: User
    @Published var userPerson: PersonViewModel
    @Published var personListViewModel: PersonListViewModel
    @Published var reservationListViewModel: ReservationListViewModel
    
     public func setUserReservations(){
        reservationListViewModel.reservations = reservationListViewModel.reservations.filter{$0.pacient == 1}
    }
    func setUserPerson(){
        userPerson = personListViewModel.persons.first(where:{$0.person.id == user.idPerson}) ?? PersonViewModel(person: Person())
    }
    func getDentists() ->[PersonViewModel] {
        return personListViewModel.persons.filter { $0.idRole == 2}
    }
    
    init() {
        user = User()
        userPerson = PersonViewModel(person: Person())
        reservationListViewModel = ReservationListViewModel()
        personListViewModel = PersonListViewModel()
        user.idPerson = 1
        setUserReservations()
        }
}
