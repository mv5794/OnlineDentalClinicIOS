//
//  PersonListViewModel.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/21/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import Foundation

class PersonListViewModel: ObservableObject {
    @Published var persons = [PersonViewModel]()
    
    init() {
        OnlineDentalClinicService().getPersons() { persons in
            if let persons = persons {
                self.persons = persons.map(PersonViewModel.init)
            }
        }
    }
    
}
