//
//  RegisterReservationView.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/11/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import SwiftUI

struct RegisterReservationView: View {
    @EnvironmentObject var reservationListViewModel : ReservationListViewModel
    var reservation = Reservation()
    var paciente = Person()
    var dentista = Person()
    var body: some View {
        VStack{
    
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("Fecha") })
            Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Dentista")) {
                Text("Geronimo Chavez").tag(1)
                Text("Julie Diaz").tag(2)
            }
            Button(action: {}) {
                Text("Registrar")
            }
        }
    }
}

struct RegisterReservationView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterReservationView()
    }
}
