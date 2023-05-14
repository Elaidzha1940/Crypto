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
                .frame(width: 150, height: 150)
                .foregroundColor(Color(toElement: .progress))
            
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(Color(toElement: .bgred))

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

