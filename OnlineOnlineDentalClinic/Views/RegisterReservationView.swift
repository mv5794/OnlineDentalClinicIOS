//
//  RegisterReservationView.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/11/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import SwiftUI

struct RegisterReservationView: View {
    @EnvironmentObject var userConfig : UserConfig
    @Environment(\.presentationMode) var presentationMode
    @State var reservation = Reservation()
    var paciente = Person()
    var dentista = Person()
    @State var fechaReserva = Date()
    @State var dentistaIndex = 0
    var body: some View {
        VStack{
    
            DatePicker(selection: $fechaReserva , label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/})
            Picker(selection: $dentistaIndex, label: Text("Dentista")) {
                ForEach(0 ..< userConfig.getDentists().count) {
                    Text(self.userConfig.getDentists()[$0].lastname).tag($0)
                }
            }
            Button(action: {self.onClick()}) {
                Text("Registrar")
            }
        }
    }
    func onClick() {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ";   reservation.reservation_date = formatter.string(from: fechaReserva)
        reservation.idPacient = 1//userConfig.userPerson.id
        reservation.idDentist = userConfig.getDentists()[dentistaIndex].id
        userConfig.reservationListViewModel.reservations.append(ReservationViewModel(reservation: reservation))
        print(userConfig.reservationListViewModel.reservations)
        self.presentationMode.wrappedValue.dismiss()
        
    }
}

struct RegisterReservationView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterReservationView()
        
    }
}
