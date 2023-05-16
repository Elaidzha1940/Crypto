//
//  Test.swift
//  Crypto
//
//  Created by Elaidzha Shchukin on 16.05.2023.
//

import SwiftUI

struct Top: Identifiable, Hashable {
    
    var name: String
    var number: String
    var icon: String
    //var isFavorite: Bool
    var color: Color
    let id = UUID()
    
    static func goodExamples() -> [Top] {
        return [Top(name: "Oliver", number: "1111", icon: "icon-states", color: Color(toElement: .bgmain)),
                Top(name: "Oliver", number: "2222", icon: "icon-kingdom", color: Color(toElement: .push)),
                Top(name: "Oliver", number: "3333", icon: "icon-india", color: Color(toElement: .bgmain))
        ]
    }
}
