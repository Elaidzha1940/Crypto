//  /*
//
//  Project: Crypto
//  File: TopView.swift
//  Created by: Elaidzha Shchukin
//  File: 14.05.2023
//
//  Status: #In progress | #Decorated
//
//  */

import SwiftUI

struct TopView: View {
    var body: some View {
        
        VStack {
            
            Text("TOP 10 Traders ")
                .font(.custom("Inter-Bold", size: 22))
                .foregroundColor(Color(toText: .main))
            
            VStack {
                HStack{
                    
                    Image("icon-number")
                        .padding()
                    
                    Text("Country")
                        .padding()
                    
                    Text("Name")
                        .padding()
                                        
                    Text("Deposit")
                        .padding()
                    
                    Text("Profit")
                        .padding()
                }
                .background(Color(toElement: .todo))
                .cornerRadius(13)
                .frame(width: 450, height: 50)
                .padding()

            }
            
            ScrollView {
                VStack {
                    ForEach(0 ..< 50, id: \.self) { _ in
                        CountriesList()
                    }
                }
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            TopView()
        }
    }
}
