//  /*
//
//  Project: CryptoApp
//  File: Color.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.05.2023
//
//  Status: #In progress | #Decorated
//
//  */

import SwiftUI

internal extension Color {
    
    //MARK: Element
    //=============================================
    enum Element: String, AssetColor {
        case bg, bgred, progress, tab, todo, trade, progressgrey, bgmain, push, top
        
    }
    init(toElement option: Self.Element){
        self.init(option.colorName)
    }
    
    //MARK: Text
    //=============================================
    enum Text: String, AssetColor {
        case main, txtgreen, txtblue
    }
    init(toText option: Self.Text){
        self.init(option.colorName)
    }
}
