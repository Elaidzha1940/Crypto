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
    
    @State private var selected: String = "Trade"
    
    var body: some View {
        
        TabView(selection: $selected) {
            
            TradeMainView()
                .tabItem {
                    Image("system-tabvawe")
                    
                    Text("Trade")
                }
            
            CurrencyPair()
                .tabItem {
                    Image("system-person")
                       
                    Text("Top")
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
