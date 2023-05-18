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
        
        VStack {
            
            TabView(selection: $selection) {
                
                TradeMainView()
                    .tabItem {
                        Image("system-tabvawe")
                        Text("Trade")
                    }
                
                CurrencyPair()
                    .tabItem {
                        Image("system-person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 12)
                        Text("Top")
                            .font(.custom("Itner-SemiBold", size: 10))
                    }
                
            }
            .accentColor(Color(toElement: .progress))
            
        }
    }
}

struct TabMenu_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            TabMenu()
        }
    }
}
