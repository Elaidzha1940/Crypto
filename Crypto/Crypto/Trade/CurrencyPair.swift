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
                Spacer()
                
                VStack {
                    
                    HStack(spacing: 70) {
                        VStack {
                            Text("EUR/USD")
                                .font(.custom("Inter-SemiBold", size: 14))
                                .foregroundColor(Color(toText: .balance))
                        }
                        .background(
                            Rectangle()
                                .frame(width: 152, height: 54)
                                .foregroundColor(Color(toElement: .trade))
                                .cornerRadius(12)
                        )
                        .padding()
                        
                        VStack(alignment: .center, spacing: 8) {
                            Text("EUR/USD")
                                .font(.custom("Inter-SemiBold", size: 14))
                                .foregroundColor(Color(toText: .balance))
                        }
                        .background(
                            Rectangle()
                                .frame(width: 152, height: 54)
                                .foregroundColor(Color(toElement: .trade))
                                .cornerRadius(12)
                        )
                        .padding()
                    }
                    
                    HStack(spacing: 70) {
                        VStack {
                            Text("EUR/USD")
                                .font(.custom("Inter-SemiBold", size: 14))
                                .foregroundColor(Color(toText: .balance))
                        }
                        .background(
                            Rectangle()
                                .frame(width: 152, height: 54)
                                .foregroundColor(Color(toElement: .trade))
                                .cornerRadius(12)
                        )
                        .padding()
                        
                        VStack(alignment: .center, spacing: 8) {
                            Text("EUR/USD")
                                .font(.custom("Inter-SemiBold", size: 14))
                                .foregroundColor(Color(toText: .balance))
                        }
                        .background(
                            Rectangle()
                                .frame(width: 152, height: 54)
                                .foregroundColor(Color(toElement: .trade))
                                .cornerRadius(12)
                        )
                        .padding()
                    }
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
