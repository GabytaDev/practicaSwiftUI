//
//  ContentView.swift
//  practicaPantallas
//
//  Created by Gabriela Loyola on 09/03/2023.
//

import SwiftUI

struct ContentView: View {
  
    let numero = "123456"
    let mensaje = "Hola como estas?"
    
    func sendMessage() {
        //sms = una url
        let sms = "sms:\(numero)&body=\(mensaje)"
        guard let stringSms = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return }
        UIApplication.shared.open(URL.init(string: stringSms)!, options: [:], completionHandler: nil)
    }
    
    func sendCall(){
        guard let number = URL(string: "tel://\(numero)") else { return }
        UIApplication.shared.open(number)
    }
    
    var body: some View {
        VStack{
           
            HStack{
                //esta funcion no funciona en el simulador, hay q probar en el iphone real
                VStack{
                    Button(action: {
                        sendCall()
                    }){
                        Image(systemName: "phone.fill")
                            .modifier(botones(colorIcon: .green))
                    };Text("Call")
                }
                VStack{
                    Button(action: {
                        sendMessage()
                    }) {
                        Image(systemName: "message.fill")
                            .modifier(botones(colorIcon: .orange))
                    };Text("Send")
                }
            }.padding()
            
    }
        
    }
}
struct botones : ViewModifier{
    var colorIcon : Color
    func body(content: Content) -> some View {
        content
        .padding()
        .background(colorIcon)
        .clipShape(Circle())
        .foregroundColor(.white)
        .font(.title)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
