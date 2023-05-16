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
            Text("Trade")
                .font(.custom("Inter-Bold", size: 22))
                .foregroundColor(Color(toText: .main))
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
