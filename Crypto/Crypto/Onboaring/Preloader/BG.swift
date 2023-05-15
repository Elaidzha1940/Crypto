//  /*
//
//  Project: CryptoApp
//  File: BG.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.05.2023
//
//  Status: #In progress | #Decorated
//
//  */

import SwiftUI

struct BG: View {
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [Color(toElement: .bgmain) .opacity(0.7)], startPoint: .topTrailing, endPoint: .bottomLeading)
                .ignoresSafeArea()
            
            VStack {
                Circle()
                    .frame(width: 123, height: 123)
                    .foregroundColor(Color(toElement: .progress))
                    .blur(radius: 80)
                    .offset(x: 100, y: -150)
                
                Circle()
                    .frame(width: 123, height: 123)
                    .foregroundColor(Color(toElement: .bgred))
                    .blur(radius: 80)
                    .offset(x: -120, y: 130)
            }
            
            ProgressBar()
            
        }
    }
}

struct BG_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            BG()
        }
    }
}

