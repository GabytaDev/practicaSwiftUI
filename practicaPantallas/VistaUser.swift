//
//  VistaUser.swift
//  practicaPantallas
//
//  Created by Gabriela Loyola on 20/03/2023.
//

import SwiftUI

struct VistaUser: View {
    
    @State private var textoTexfield = ""
    @State private var textoTexfieldAddress = ""
    let buttonDetail = "Check it"
    
    var body: some View {
        
        
        NavigationView{
            
            VStack {
                
                HStack{
                    Image(systemName: "person.fill").foregroundColor(.orange).font(.largeTitle)
                    Text("Complete User profile")
                    
                }.font(.title)
                
                TextField("Name", text: $textoTexfield).padding()
                TextField("Address", text: $textoTexfieldAddress).padding()
                Button(action: {}, label: {
                    NavigationLink(destination: DetailUser(textoRecibido1: textoTexfield, textorecibido2: textoTexfieldAddress)) {Text(buttonDetail)}
                })
            }
            .onTapGesture {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
        }
    }
    
    struct VistaUser_Previews: PreviewProvider {
        static var previews: some View {
            VistaUser()
        }
    }
    
}
