//
//  testone.swift
//  Crypto
//
//  Created by Elaidzha Shchukin on 16.05.2023.
//

import SwiftUI

struct CrazyStyledListView: View {
    
    @State private var healthyFoods = Top.goodExamples()
    //@State private var unhealthFoods = Food.unhealthyExamples()
    
    var body: some View {
        List {
            Section {
                ForEach(healthyFoods) { food in
                    Text("hhh")
//                        Top(food: foo)
                        .listRowBackground(Color(toElement: .bgmain))
                }
            } header: {
                Text("Fruits")
            }
            .listRowBackground(Color.blue)
            .foregroundColor(.black)
        }
    }
}

struct CrazystyleView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            CrazyStyledListView()
                .previewDisplayName("CustomS")
        }
    }
}

//            Section {
//                ForEach(healthyFoods) { food in
//                    FoodRow(food: food)
//                }
//                .listRowBackground(
//                    Capsule()
//                        .fill(Color(white: 1, opacity: 0.8))
//                        .padding(.vertical, 2).padding(.horizontal, 20)
//                )
//                .listRowSeparator(.hidden)
//                .foregroundColor(.indigo)
//            } header: {
//                Text("Healthy Foods")
//                    .font(.title)
//                    .bold()
//                    .foregroundColor(.white)
//                    .shadow(radius: 5)
//            }
//            .listRowInsets(.init(top: 0, leading: 40, bottom: 0, trailing: 40))

//            Section {
//                ForEach(unhealthFoods) { food in
//                   FoodRow(food: food)
//                }
//                .foregroundColor(.pink)
//                .listRowInsets(.init(top: 0, leading: 60, bottom: 0, trailing: 60))
//                .listRowSeparatorTint(.orange)
//            } header: {
//                Text("Unhealthy Foods")
//                    .foregroundColor(.black)
//            } footer: {
//                Text("You should try to avoid them and only eat them occasionally.")
//                    .foregroundColor(.white)
//            }
//            .listRowBackground(Color.black)
//            .listSectionSeparatorTint(.yellow)
//            .headerProminence(.increased)
//        }
//        .scrollContentBackground(.hidden)
//        .background(
//            Image("candies")
//                .resizable()
//                .scaledToFill()
//                .clipped()
//                .edgesIgnoringSafeArea(.all)
//                .blur(radius: 3)
//                .overlay(Color.indigo.opacity(0.2))
//        )
//        .environment(\.defaultMinListHeaderHeight, 45)
//        .environment(\.defaultMinListRowHeight, 50)



