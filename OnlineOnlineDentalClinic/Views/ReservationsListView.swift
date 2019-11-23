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
        Text(reservation.reservation_date)
    }
}

struct ReservationsListView: View {
    
      @EnvironmentObject var userConfig : UserConfig
    
    

    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: RegisterReservationView().environmentObject(userConfig)) { Text("Reservar Cita") }
                .scaledToFill()
                .frame(minWidth: 100, idealWidth: 300, maxWidth: 350)
                .border(Color.blue, width: 2)

                List(self.userConfig.reservationListViewModel.reservations) { reservation in
                    NavigationLink(destination: AboutReservationView(reservation: reservation)) {
                        ReservationRow(reservation: reservation)
                    }
                }
                .navigationBarTitle(Text("Reservations"), displayMode: .automatic)
            }
        }
        
        
    }
    

}

struct ReservationsListView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationsListView()
    }
}
