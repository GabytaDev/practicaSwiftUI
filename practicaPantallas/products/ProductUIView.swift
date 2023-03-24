//
//  ProductUIView.swift
//  practicaPantallas
//
//  Created by Gabriela Loyola on 09/03/2023.
//

import SwiftUI

struct ProductUIView: View {
    let buttonShop = "Shop Now"
    @State private var show = false
    
    let buttonShopping = "View Price"
    @State private var show1 = false
    
    let buttonDetails = "View Details"
    @State private var show2 = false
    
    var body: some View {
     
        VStack {
            Text ("List Products").font(.largeTitle)
            HStack {
                Image("imageProduct1")
                    .clipShape(Circle())
                VStack (alignment: .center) {
                    Text ("New Product").font(.title)
                    HStack (alignment: .bottom){
                        Button(buttonShop){
                            show = true
                        }.alert(isPresented: $show){
                            Alert(title: Text ("Shop Now"), message: Text ("In stock"), dismissButton: .default(Text("close")))
                        }
                    }
                }
                  
            }
            HStack {
                Image("imageProduct2")
                    .clipShape(Circle())
                VStack (alignment: .center) {
                    Text ("Check discount").font(.title)
                    HStack (alignment: .bottom){
                        Button(buttonShopping){
                            show1 = true
                        }.alert(isPresented: $show1){
                            Alert(title: Text ("Price discount"), message: Text ("Price: $10.000"), dismissButton: .default(Text("close")))
                        }
                    }
                }
            }
            HStack {
                Image("imageProduct3")
                    .clipShape(Circle())
                VStack (alignment: .center) {
                    Text ("Details").font(.title)
                    HStack (alignment: .bottom){
                        Button(buttonDetails){
                            show2 = true
                        }.alert(isPresented: $show2){
                            Alert(title: Text ("Details"), message: Text ("New Design: 100% Eco"), dismissButton: .default(Text("close")))
                        }
                    }
                }
            }
            
        }
        .padding(.horizontal)
    }
}



struct ProductUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProductUIView()
    }
}
