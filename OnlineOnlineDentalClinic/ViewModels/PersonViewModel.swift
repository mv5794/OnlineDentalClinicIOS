//
//  Person.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/8/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//
import Foundation

struct PersonViewModel: Identifiable {
    var person: Person
    
    var id = UUID()
    
    var name: String {
        return self.person.name
    }
    
    var lastname: String {
        return self.person.lastname
    }
    
    var dni: String {
        return self.person.dni
    }
    
    var phone: String {
        return self.person.phone
    }
    
    var mail: String {
        return self.person.mail
    }
    
    var picture: String {
        return self.person.picture
    }
    
    var gender: String{
        return self.person.gender
    }
    
    init(person: Person) {
        self.person = person
    }
}

