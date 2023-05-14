//  /*
//
//  Project: CryptoTrackerApp
//  File: ProgressBar.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.05.2023
//
//  Status: #In progress | #Decorated
//
//  */

import SwiftUI

struct ProgressBar: View {
    
    @State var percent: CGFloat = 0
    
    var body: some View {
        
        VStack {
            CustomProgressBar(percent: self.$percent)
            
        }
        .padding()
        .onTapGesture {
            
            self.percent = 1.0
        }
        .animation(.spring())
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            ProgressBar()
        }
    }
}

struct CustomProgressBar : View {
    
    @Binding var percent: CGFloat
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundColor(Color(toElement: .progressgrey))
                    .frame(height: 24)
                
                
           
            
            ZStack(alignment: .trailing) {
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .foregroundColor(Color(toElement: .progress))
                    .frame(height: 24)
                    .frame(width: self.calPercent(), height: 24)
                
                Text(String(format: "%.0f", self.percent * 100))
                    .font(.system(size: 16, weight: .bold))
                    .padding()
            }
        }
        .padding(18)
    }
    
    func calPercent() -> CGFloat {
        
        let width = UIScreen.main.bounds.width - 58
        
        return width * self.percent
    }
}

