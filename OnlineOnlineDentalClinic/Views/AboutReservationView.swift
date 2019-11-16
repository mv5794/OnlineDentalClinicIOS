//
//  AboutReservationView.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/11/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import SwiftUI

struct AboutReservationView: View {
    @EnvironmentObject var reservationListViewModel : ReservationListViewModel
    
    var reservation : ReservationViewModel
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Text("\(reservation.reservation_date)").bold()
                        .font(Font.custom("SFUIDisplay-Light", size: 21))
                
                }
                Spacer()
                HStack(alignment: .top) {
                    Text("Dentista: ").bold()
                    Text("\(reservation.dentist.name)"+" "+"\(reservation.dentist.lastname)")
                }
                HStack(alignment: .top) {
                    Text("Direccion: ").bold()	
                    Text("\(reservation.dentist.address)")
                }
                
                Spacer()
                
                Button(action: {self.reservationListViewModel.reservations.remove(at: self.reservation.id)}) {
                    Text("Cancelar Cita")
                }
                .scaledToFill()
                .frame(minWidth: 100, idealWidth: 200, maxWidth: 350)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
            

            }
            
                
            .navigationBarTitle("About cita")
        }
    }
}

struct AboutGodView_Previews: PreviewProvider {
    static var previews: some View {
        AboutReservationView(reservation: ReservationViewModel(reservation: Reservation()))
    }
}
