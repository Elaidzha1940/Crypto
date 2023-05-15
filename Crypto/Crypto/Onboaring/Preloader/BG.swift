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
        
        ZStack {
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(RadialGradient(gradient: Gradient(colors: [Color(toElement: .progress), Color(toElement: .bgred)]),
                                   center: .topTrailing, startRadius: 55, endRadius: 900))
        
        
        //.background(Color(toElement: .bgmain))
    }
        
}

struct BG_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            BG()
        }
    }
}

