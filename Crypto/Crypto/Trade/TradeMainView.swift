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
                            .frame(width: 320, height: 54)
                            .foregroundColor(Color(toElement: .trade))
                            .cornerRadius(12)
                    )
                    
                   // Spacer()
                    
                    Rectangle()
                        .frame(width: 450, height: 450)
                        .foregroundColor(Color(toElement: .bgred))
                        .padding()
                    
                    VStack(alignment: .center) {
                        HStack {
                            Button {
                                //action
                            } label: {
                                Text("GPB/USD")
                                    .font(.custom("Inter-Bold", size: 16))
                                    .foregroundColor(Color(toText: .main))
                                    .padding(.horizontal, 90)
                                Image("system-chevronright")
                                
                            }
                            .background(
                                Rectangle()
                                    .frame(width: 320, height: 54)
                                    .foregroundColor(Color(toElement: .trade))
                                    .cornerRadius(12)
                            )
                        }
                        
                        HStack(spacing: 65) {
                            VStack {
                                Text("Timer")
                                    .font(.custom("Inter-Medium", size: 12))
                                    .foregroundColor(Color(toText: .balance))
                                
                                Text(" - 00:02 + ")
                                    .font(.custom("Inter-Bold", size: 16))
                                    .foregroundColor(Color(toText: .main))
                                    .padding(-1)
                            }
                            .background(
                                Rectangle()
                                    .frame(width: 152, height: 54)
                                    .foregroundColor(Color(toElement: .trade))
                                    .cornerRadius(12)
                            )
                            .padding()
                            
                            VStack(alignment: .center, spacing: 8) {
                                Text("Investment")
                                    .font(.custom("Inter-Medium", size: 12))
                                    .foregroundColor(Color(toText: .balance))
                                
                                Text(" - 1,000 + ")
                                    .font(.custom("Inter-Bold", size: 16))
                                    .foregroundColor(Color(toText: .main))
                            }
                            .background(
                                Rectangle()
                                    .frame(width: 152, height: 54)
                                    .foregroundColor(Color(toElement: .trade))
                                    .cornerRadius(12)
                            )
                            .padding()
                            
                        }
                        .padding()
                        
                        HStack(spacing: 125) {
                            VStack {
                                Button {
                                    //action
                                } label: {
                                    Text("Sell")
                                        .font(.custom("Inter-Medium", size: 24))
                                        .foregroundColor(Color(toText: .main))
                                        .offset(x: -45, y:  -7)
                                }
                                .background(
                                    Rectangle()
                                        .frame(width: 152, height: 54)
                                        .foregroundColor(Color(toElement: .bgred))
                                        .cornerRadius(12)
                                )
                            }
                            
                            VStack {
                                Button {
                                    //action
                                } label: {
                                    Text("Buy")
                                        .font(.custom("Inter-Medium", size: 24))
                                        .foregroundColor(Color(toText: .main))
                                        .offset(x: -45, y:  -7)
                                }
                                .background(
                                    Rectangle()
                                        .frame(width: 152, height: 54)
                                        .foregroundColor(Color(toElement: .progress))
                                        .cornerRadius(12)
                                )
                            }
                        }
                        .offset(y: -10)
                    }
                }
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct TradeMainView_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            TradeMainView()
        }
    }
}
