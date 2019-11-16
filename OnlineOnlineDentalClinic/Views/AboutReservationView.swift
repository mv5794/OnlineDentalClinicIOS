//
//  AboutReservationView.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/11/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import SwiftUI

struct AboutReservationView: View {
    
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
                Button(action: {}) {
                    Text("Cancelar Cita")
                }
                .scaledToFill()
                .frame(minWidth: 100, idealWidth: 200, maxWidth: 350)
                .background(Color.white)
                .foregroundColor(Color.blue)
                .cornerRadius(10)
                .border(Color.blue, width: 2)
                .padding()
                
                Button(action: {}) {
                    Text("Cita Atendida")
                }
                .scaledToFill()
                .frame(minWidth: 100, idealWidth: 200, maxWidth: 350)
                .background(Color.white)
                .foregroundColor(Color.blue)
                .cornerRadius(10)
                .border(Color.blue, width: 2)
                .padding()

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
