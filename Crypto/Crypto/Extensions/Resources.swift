//  /*
//
//  Projecct: CryptoApp
//  File: Resources.swift
//  Created by: Elaidzha Shchukin
//  Date:  14.05.2023
//
//  Status: #In progress | #Decorated
//
//  */

import Foundation

enum Resources {}

extension Resources {

    enum System: String, AssetConvertable {

        case tabvawe, personhead, personbody, chevronright, person
    }

    enum Icon: String, AssetConvertable {
        
        case number, brasil, canada, china, colombia, kingdom, states, russia, spain, germany, france
    }

    enum Categories: String, AssetConvertable {
        
        case some

    }
}
