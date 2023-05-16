//  /*
//
//  Project: Crypto
//  File: TradeMainView.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.05.2023
//
//
//
//  */

import SwiftUI

struct TradeMainView: View {
        
    var body: some View {
        
        VStack {
            
            ZStack {
                Color(toElement: .trademain)
                
                VStack {
                    Text("Trade")
                        .font(.custom("Inter-Bold", size: 22))
                        .foregroundColor(Color(toText: .main))
                        .padding()
                    
                    VStack {
                        Text("Balance")
                            .font(.custom("Inter-Medium", size: 12))
                            .foregroundColor(Color(toText: .balance))
                            .padding(-1)
                        
                        Text("10 000")
                            .font(.custom("Inter-Bold", size: 16))
                            .foregroundColor(Color(toText: .main))
                            .padding(-1)
                    }
                    .background(
                        Rectangle()
                            .frame(width: 315, height: 54)
                            .foregroundColor(Color(toElement: .trade))
                            .cornerRadius(12)
                    )
                    
                }
            }
            .ignoresSafeArea(.all)
        }
    }
}

struct TradeMainView_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            TradeMainView()
        }
    }
}
