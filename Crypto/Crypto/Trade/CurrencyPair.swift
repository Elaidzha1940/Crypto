//  /*
//
//  Project: Crypto
//  File: CurrencyPair.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.05.2023
//
//
//
//  */

import SwiftUI

struct CurrencyPair: View {
    
    var body: some View {
        
        VStack {
            ZStack {
                Color(toElement: .trademain)
                
                Text("Currency pair")
                    .font(.custom("Inter-Bold", size: 22))
                    .foregroundColor(Color(toText: .main))
                
                VStack {
                    //LazyVGrid
                    
                }
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct CurrencyPair_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            CurrencyPair()
        }
    }
}
