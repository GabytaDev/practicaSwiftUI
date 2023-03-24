//
//  DetailUser.swift
//  practicaPantallas
//
//  Created by Gabriela Loyola on 21/03/2023.
//

import SwiftUI

struct DetailUser: View {
    var textoRecibido1: String
    var textorecibido2: String
    
    var body: some View {
        VStack{
            VStack {
                
                Text("Your data").font(.title).padding()
                Image(systemName: "person.fill").foregroundColor(.orange).font(.largeTitle)
            }
            Color.clear
                .overlay(
                    VStack(spacing: 10.0) {
                        Text(textoRecibido1).padding()
                   
                        Text(textorecibido2).padding()
                    
                    }
            )
            
            
           
        }
        
    }
}

