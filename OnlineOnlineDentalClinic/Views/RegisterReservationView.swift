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
    @State var fechaReserva = Date()
    @State var nombreDentista = String()
    var body: some View {
        VStack{
    
            DatePicker(selection: $fechaReserva , label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/})
            Picker(selection: $nombreDentista, label: Text("Dentista")) {
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
