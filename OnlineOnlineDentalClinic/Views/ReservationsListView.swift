//
//  ReservationsListView.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/11/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import SwiftUI

struct ReservationRow: View {
    var reservation: ReservationViewModel
    
    var body: some View {
        Text(reservation.estauts)
    }
}

struct ReservationsListView: View {
    
      @EnvironmentObject var reservationListViewModel : ReservationListViewModel
    
    var body: some View {
        VStack{
            NavigationLink(destination: RegisterReservationView()) { Text("Reservar Cita") }
            .scaledToFill()
            .frame(minWidth: 100, idealWidth: 300, maxWidth: 350)
            .border(Color.blue, width: 2)

            List(self.reservationListViewModel.reservations) { reservation in
                NavigationLink(destination: AboutReservationView(reservation: reservation)) {
                    ReservationRow(reservation: reservation)
                }
            }
            .navigationBarTitle(Text("Reservations"), displayMode: .automatic)
        }
        
        
    }
    

}

struct ReservationsListView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationsListView()
    }
}
