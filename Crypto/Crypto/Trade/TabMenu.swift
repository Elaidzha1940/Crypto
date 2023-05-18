//  /*
//
//  Project: Crypto
//  File: TabMenu.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.05.2023
//
//
//
//  */

import SwiftUI

struct TabMenu: View {
    
    @State private var selection: String = "Trade"
    
    var body: some View {
        
        TabView(selection: $selection) {
            
            TradeMainView()
                .tabItem {
                    Image("system-tabvawe")
                    Text("Trade")
                        .font(.custom("Itner-SemiBold", size: 10))
                }
            
            CurrencyPair()
                .tabItem {
                    Image("system-person")
                    
                    Text("Top")
                        .font(.custom("Itner-SemiBold", size: 10))
                }
        }
        .accentColor(Color(toElement: .progress))
        
    }
}

struct TabMenu_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            TabMenu()
        }
    }
}
