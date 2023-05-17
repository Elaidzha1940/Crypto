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
            Spacer()
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
                    
                    Spacer()
                    
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
                                    .frame(width: 315, height: 54)
                                    .foregroundColor(Color(toElement: .trade))
                                    .cornerRadius(12)
                            )
                        }
                        HStack {
                            Spacer()
                            VStack {
                                Text("Timer")
                                    .font(.custom("Inter-Medium", size: 12))
                                    .foregroundColor(Color(toText: .balance))
                                    .padding(-1)
                                
                                Text("- 00:02 +")
                                    .font(.custom("Inter-Bold", size: 16))
                                    .foregroundColor(Color(toText: .main))
                                    .padding(-1)
                            }
                            .background(
                                Rectangle()
                                    .frame(width: 150, height: 54)
                                    .foregroundColor(Color(toElement: .trade))
                                    .cornerRadius(12)
                            )
                            .padding()
                            Spacer()
                            
                            VStack {
                                Text("Investment")
                                    .font(.custom("Inter-Medium", size: 12))
                                    .foregroundColor(Color(toText: .balance))
                                    .padding(-1)
                                
                                Text("1,000")
                                    .font(.custom("Inter-Bold", size: 16))
                                    .foregroundColor(Color(toText: .main))
                                    .padding(-1)
                            }
                            .background(
                                Rectangle()
                                    .frame(width: 150, height: 54)
                                    .foregroundColor(Color(toElement: .trade))
                                    .cornerRadius(12)
                            )
                            .padding()
                            Spacer()
                        }
                        .padding(.top, 10)
                    }
                    Spacer()
                    
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
