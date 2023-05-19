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

struct ButtonData {
    let id = UUID()
    let title: String
    var isSelected = false
}

struct CurrencyPair: View {
    
    @State private var buttons: [ButtonData] = [
        ButtonData(title: "EUR/USD"),
        ButtonData(title: "EUR/USD"),
        ButtonData(title: "EUR/USD"),
        ButtonData(title: "GPB/USD"),
        ButtonData(title: "GPB/USD"),
        ButtonData(title: "GPB/USD"),
        ButtonData(title: "GPB/USD"),
        ButtonData(title: "EUR/USD"),
        ButtonData(title: "GPB/USD"),
        ButtonData(title: "GPB/USD"),
        ButtonData(title: "GPB/USD"),
        ButtonData(title: "GPB/USD"),
        ButtonData(title: "GPB/USD"),
        ButtonData(title: "GPB/USD")
    ]
    
    var body: some View {
        
        NavigationView {
            VStack {
                ZStack {
                    Color(toElement: .trademain)
                    
                    LazyVGrid(columns: createGrid()) {
                        
                        ForEach(buttons.indices) { index in
                            Button(action: {
                                buttons[index].isSelected.toggle()
                            }) {
                                Text(buttons[index].title)
                                    .font(.custom("Inter-SemiBold", size: 14))
                                    .frame(width: 140, height: 54)
                                    .foregroundColor(buttons[index].isSelected ? Color(toText: .main) : Color(toText: .main))
                                    .padding()
                                    .background(buttons[index].isSelected ? Color(toElement: .progress) : Color(toElement: .trade))
                                    .cornerRadius(12)
                            }
                        }
                    }
                    .padding(.top, 40)
                }
            }
            .ignoresSafeArea(.all)
            .navigationTitle("Currency pair")
            
        }
    }
}

struct CurrencyPair_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            CurrencyPair()
        }
    }
}

private func createGrid() -> [GridItem] {
    let gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
    return gridItemLayout
    
}

