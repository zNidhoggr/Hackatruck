//
//  ContentView.swift
//  aula4
//
//  Created by Turma02-15 on 26/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            
                Trincha()
                    .tabItem {
                        Label("Rosa", systemImage: "paintbrush.fill")
                    }
            
            
                Pincel()
                    .tabItem {
                        Label("Azul", systemImage: "paintbrush.pointed.fill")
                    }
            
            
                Paleta()
                    .tabItem {
                        Label("Cinza", systemImage: "paintpalette.fill")
                    }
            
            
                Lista()
                    .tabItem {
                        Label("Lista", systemImage: "list.bullet")
                    }
            
                          
        }
      
    }
}

#Preview {
    ContentView()
}
