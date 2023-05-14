//  /*
//
//  Project: CryptoApp
//  File: BG.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.05.2023
//
//  Status: #In progress | #Decorated
//
//  */

import SwiftUI

struct BG: View {
    var body: some View {
        
        VStack {
            Circle()
                .frame(width: 123, height: 123)
                .foregroundColor(Color(toElement: .progress))
                .offset(x: 70, y: 50)
                .padding()
            
            Spacer()
            
            Circle()
                .frame(width: 123, height: 123)
                .foregroundColor(Color(toElement: .bgred))
                .offset(x: -70, y: -50)
                .padding()

        }
    }
}

struct BG_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            BG()
        }
    }
}

