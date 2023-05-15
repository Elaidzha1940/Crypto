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
            .foregroundColor(Color(toText: .main))
            .frame(width: 315, height: 54)
            .background(Color(toElement: .progress))
            .cornerRadius(12)
            
            .alert(isPresented: $showAlert, content: {
                
                Alert(title: Text("App would like to send You Notifications"),
                      message: Text("Notifications may include aletrs, sounds and icon badges. These can be configured in Settings."),
                      primaryButton: .destructive(Text("Allow")),
                      secondaryButton: .cancel(Text("Don't Allow")))
                
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


