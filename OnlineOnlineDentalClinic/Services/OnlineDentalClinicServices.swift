//
//  RoleServices.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/9/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import Foundation

class OnlineDentalClinicService {
    private let baseUrlString = "https://onlinedentalclinic.azurewebsites.net"
    private let reservationsRelativeEndPointString = "/reservations"
    private let personsRelativeEndPointString = "/persons"
    private let rolesRelativeEndPointString = "/roles"
    private let usersRelativeEndPointString = "/users"
    
    private func reservationsEndPointString() -> String {
        return "\(baseUrlString)\(reservationsRelativeEndPointString)"
    }
    
    private func personsEndPointString() -> String {
        return "https://onlinedentalclinic.azurewebsites.net/persons"
    }
    
    private func rolesEndPointString() -> String {
        return "\(baseUrlString)\(rolesRelativeEndPointString)"
    }
    private func usersEndPointString() -> String {
        return "\(baseUrlString)\(usersRelativeEndPointString)"
    }
    
    
    
    
    func getRoles(completion: @escaping ([Role]?) -> ()) {
        guard let url = URL(string: rolesEndPointString()) else {
            fatalError("Invalid URL")
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            
            let roles = try? JSONDecoder().decode([Role].self, from: data)
            DispatchQueue.main.async {
                completion(roles)
            }
            if let error = error {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
    
    func getPersons(completion: @escaping ([Person]?) -> ()) {
        guard let url = URL(string: personsEndPointString()) else {
            fatalError("Invalid URL")
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            
            let persons = try? JSONDecoder().decode([Person].self, from: data)
            DispatchQueue.main.async {
                completion(persons)
            }
            if let error = error {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
    
    func getReservations(completion: @escaping ([Reservation]?) -> ()) {
        guard let url = URL(string: reservationsEndPointString()) else {
            fatalError("Invalid URL")
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            
            let reservations = try? JSONDecoder().decode([Reservation].self, from: data)
            DispatchQueue.main.async {
                completion(reservations)
            }
            if let error = error {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
    
}
