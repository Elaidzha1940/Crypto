//  /*
//
//  Project: Crypto
//  File: Notification.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.05.2023
//
//  Status: #In progress | #Decorated
//
//  */

import SwiftUI

struct Notification: View {
        
    @State var showAlert: Bool = false
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Button("Activate NOW") {
                showAlert.toggle()
            }
            .font(.custom("Inter-Bold", size: 18))
            .foregroundColor(Color(toText: .main))
            .frame(width: 320, height: 54)
            .background(Color(toElement: .progress))
            .cornerRadius(12)
            
            .alert(isPresented: $showAlert, content: {
                
                Alert(title: Text("App would like to send You Notifications") .font(.custom("Inter-SemiBold", size: 17)) .foregroundColor(Color(toText: .main)),
                      message: Text("Notifications may include aletrs, sounds and icon badges. These can be configured in Settings.") .font(.custom("Inter-Regular", size: 17)) .foregroundColor(Color(toText: .main)),
                      primaryButton: .destructive(Text("Allow") .font(.custom("Inter-Regular", size: 17)) .foregroundColor(Color(toText: .txtblue))),
                      secondaryButton: .cancel(Text("Don't Allow") .font(.custom("Inter-SemiBold", size: 17)) .foregroundColor(Color(toText: .txtblue))))
                
            })
        }
    }
}

struct Alert1Cm_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            Notification()
        }
    }
}


