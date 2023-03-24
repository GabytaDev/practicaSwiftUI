//
//  TabViewMain.swift
//  practicaPantallas
//
//  Created by Gabriela Loyola on 20/03/2023.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView{
            VistaHome().tabItem {
                Label("Home", systemImage: "house.fill")
            }
            ProductUIView().tabItem {
                Label("Shop", systemImage: "cart.fill")
            }
            VistaUser().tabItem {
                Label("User", systemImage: "person.fill")
            }
        }
    }
}

struct TabViewMain_Previews: PreviewProvider {
    static var previews: some View {
        TabViewMain()
    }
}
