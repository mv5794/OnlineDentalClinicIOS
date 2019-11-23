//
//  ContentView.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/8/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userConfig : UserConfig
    
    var body: some View {
        NavigationView {
            VStack{
            NavigationLink(destination: UserLogin()) { Text("Login Paciente") }
                .scaledToFill()
                .frame(minWidth: 100, idealWidth: 300, maxWidth: 350)
                .border(Color.blue, width: 2)
                .padding()
                
            NavigationLink(destination: ReservationsListView()) { Text("Login Dentista") }
                .scaledToFill()
                .frame(minWidth: 100, idealWidth: 300, maxWidth: 350)
                .border(Color.blue, width: 2)
                .padding()
                
            NavigationLink(destination: ReservationsListView()) { Text("Registrarse") }
            .scaledToFill()
            .frame(minWidth: 100, idealWidth: 300, maxWidth: 350)
            .border(Color.blue, width: 2)
            .padding()
                
                
            }
            
                
            
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

