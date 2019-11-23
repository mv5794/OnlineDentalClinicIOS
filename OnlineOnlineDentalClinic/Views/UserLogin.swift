//
//  UserLogin.swift
//  OnlineOnlineDentalClinic
//
//  Created by user162803 on 11/21/19.
//  Copyright © 2019 HealthApps. All rights reserved.
//

import SwiftUI

struct UserLogin: View {
    @EnvironmentObject var userConfig : UserConfig
    @State var selected = false
    
    var body: some View {
        VStack{
            Text("Login de Dentista")
                .bold()
            
            Spacer()
            TextField("username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .scaledToFill()
            .frame(minWidth: CGFloat(100), idealWidth: CGFloat(200), maxWidth: CGFloat(250))
            .padding()
            
            TextField("password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .scaledToFill()
            .frame(minWidth: CGFloat(100), idealWidth: CGFloat(200), maxWidth: CGFloat(250))
            .padding()
            
            Spacer()
            Button("Login") {
                self.selected = true
                self.onClick()
            }.sheet(isPresented: $selected){
                ReservationsListView()
                    .environmentObject(self.userConfig)
            }
            .scaledToFill()
            .frame(minWidth: CGFloat(100), idealWidth: CGFloat(200), maxWidth: CGFloat(250))
            .padding()
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(CGFloat(10))
        }
    }
    func onClick(){
        self.userConfig.setUserReservations()
        print(userConfig.reservationListViewModel)
        
    }
}

struct UserLogin_Previews: PreviewProvider {
    static var previews: some View {
        UserLogin()
    }
}
