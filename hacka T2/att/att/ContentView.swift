//
//  ContentView.swift
//  att
//
//  Created by Turma02-15 on 22/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert: Bool = false
    @State private var name: String = ""
    
    var body: some View {
            ZStack{
                
                Image("fundo")
                    .resizable()
                    .frame(width: 670, height: 850)
                    .opacity(0.2)
                    .blur(radius: 3)
                    .padding(-40)
                    
                VStack{
                    Text("Bem vindo, \(name)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                    TextField("Digite seu nome", text: $name)
                        .multilineTextAlignment(.center)
                        
                    Spacer()
                    Image("logo")
                        .resizable()
                        .frame(width: 200, height: 100)
                    Image("truck")
                        .resizable()
                        .frame(width: 200, height: 100)
                    Spacer()
                    Button("Entrar") {
                        showAlert = true
                    }
                    .alert("Alerta!", isPresented: $showAlert){
                        Button("Tchau"){}
                    }
    
                }
            }
            
            
            .padding()
    }
}

#Preview {
    ContentView()
}
