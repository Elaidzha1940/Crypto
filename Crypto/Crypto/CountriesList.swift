//  /*
//
//  Project: Crypto
//  File: CountriesList.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.05.2023
//
//  Status: #In progress | #Decorated
//
//  */

import SwiftUI

struct CountriesList: View {
    var body: some View {
        
        HStack {
            
            Text("1")
                .font(.custom("Inter-Medium", size: 14))
                .foregroundColor(Color(toText: .list))
                .padding()
            
            Image("icon-states")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding()
            
            Spacer()
            
            Text("Oliver")
                .font(.custom("Inter-Medium", size: 14))
                .foregroundColor(Color(toText: .main))
                .padding()
            
            Spacer()
            
            Text("$3267")
                .font(.custom("Inter-Medium", size: 14))
                .foregroundColor(Color(toText: .main))
                .padding()
            
            Text("$336755")
                .font(.custom("Inter-Medium", size: 14))
                .foregroundColor(Color(toText: .txtgreen))
                .padding()
        }
        .padding()
    }
}

struct CountriesList_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            CountriesList()
        }
    }
}
