//
//  VistaHome.swift
//  practicaPantallas
//
//  Created by Gabriela Loyola on 20/03/2023.
//

import SwiftUI

struct VistaHome: View {
    let buttonShop = "Shop Now"
    //cambiar para que abra una vista nueva a products
    @State private var show = false
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    VStack {
                        Text("New Collection").font(.title).foregroundColor(Color.orange).bold()
                        
                        Text ("Visit my website")
                            .padding(.bottom, 20.0)
                    }
                    HStack {
                        NavigationLink(destination: ProductUIView()){
                            Image("imageProduct1")
                                .clipShape(Circle())
                        }
                        
                        VStack (alignment: .center) {
                            Text ("Look at me").font(.largeTitle)
                            HStack (alignment: .bottom){
                                Button(action: {}, label: {
                                    NavigationLink(destination: ProductUIView()) {Text(buttonShop)}
                                })
                                
                            }
                        }
                        
                    }
                    ContentView()
                }
                
            }
        }
        
        
    }
}
