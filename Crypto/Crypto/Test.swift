//
//  Test.swift
//  Crypto
//
//  Created by Elaidzha Shchukin on 16.05.2023.
//

import SwiftUI

struct Top: Identifiable, Hashable {
    
    var name: String
    var icon: String
    var isFavorite: Bool
    var color: Color
    let id = UUID()
    
    static func goodExamples() -> [Top] {
        return [Top(name: "Oliver", icon: "icon-states", isFavorite: true, color: Color(toElement: .bgmain)),
                Top(name: "Oliver", icon: "icon-kingdom", isFavorite: false, color: Color(toElement: .push)),
                Top(name: "Oliver", icon: "icon-india", isFavorite: false, color: Color(toElement: .bgmain))
        ]
    }
}
