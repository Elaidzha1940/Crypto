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
    
    @State private var buttonColors: [Color] = [
            Color.red, Color.blue, Color.green, Color.yellow, Color.orange
        ]
    
    var body: some View {
        
        VStack {
            ZStack {
                Color(toElement: .trademain)
                
                Text("Currency pair")
                    .font(.custom("Inter-Bold", size: 22))
                    .foregroundColor(Color(toText: .main))
                Spacer()
                
                LazyVGrid(columns: createGrid()) {
                         ForEach(0..<buttonColors.count) { index in
                             Button(action: {
                                 // Change the color of the tapped button
                                 buttonColors[index] = getRandomColor()
                             }) {
                                 RoundedRectangle(cornerRadius: 10)
                                     .fill(buttonColors[index])
                                     .frame(height: 100)
                             }
                         }
                     }
                     .padding()
                 }
                 
                 // Function to generate a random color
                 private func getRandomColor() -> Color {
                     let randomRed = Double.random(in: 0...1)
                     let randomGreen = Double.random(in: 0...1)
                     let randomBlue = Double.random(in: 0...1)
                     return Color(red: randomRed, green: randomGreen, blue: randomBlue)
                 }
                 
                 // Function to create grid columns
                 private func createGrid() -> [GridItem] {
                     let gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
                     return gridItemLayout
                 }
             }
                
//                VStack {
//
//                    HStack(spacing: 70) {
//                        VStack {
//                            Text("EUR/USD")
//                                .font(.custom("Inter-SemiBold", size: 14))
//                                .foregroundColor(Color(toText: .balance))
//                        }
//                        .background(
//                            Rectangle()
//                                .frame(width: 152, height: 54)
//                                .foregroundColor(Color(toElement: .trade))
//                                .cornerRadius(12)
//                        )
//                        .padding()
//
//                        VStack(alignment: .center, spacing: 8) {
//                            Text("EUR/USD")
//                                .font(.custom("Inter-SemiBold", size: 14))
//                                .foregroundColor(Color(toText: .balance))
//                        }
//                        .background(
//                            Rectangle()
//                                .frame(width: 152, height: 54)
//                                .foregroundColor(Color(toElement: .trade))
//                                .cornerRadius(12)
//                        )
//                        .padding()
//                    }
                    
//                    HStack(spacing: 70) {
//                        VStack {
//                            Text("EUR/USD")
//                                .font(.custom("Inter-SemiBold", size: 14))
//                                .foregroundColor(Color(toText: .balance))
//                        }
//                        .background(
//                            Rectangle()
//                                .frame(width: 152, height: 54)
//                                .foregroundColor(Color(toElement: .trade))
//                                .cornerRadius(12)
//                        )
//                        .padding()
//
//                        VStack(alignment: .center, spacing: 8) {
//                            Text("EUR/USD")
//                                .font(.custom("Inter-SemiBold", size: 14))
//                                .foregroundColor(Color(toText: .balance))
//                        }
//                        .background(
//                            Rectangle()
//                                .frame(width: 152, height: 54)
//                                .foregroundColor(Color(toElement: .trade))
//                                .cornerRadius(12)
//                        )
//                        .padding()
                //}
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
