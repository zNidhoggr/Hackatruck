//
//  ContentView.swift
//  aula4.1
//
//  Created by Turma02-15 on 26/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 20) {
                
                NavigationLink(destination: Modo1()) { Text("Modo 1") }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(40)
                    .background(Color.pink)
                    .cornerRadius(10)
                
                NavigationLink(destination: Modo1()) { Text("Modo 1") }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(40)
                    .background(Color.pink)
                    .cornerRadius(10)
                
                
                NavigationLink(destination: Modo1()) { Text("Modo 1") }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(40)
                    .background(Color.pink)
                    .cornerRadius(10)
                
            }
            
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
