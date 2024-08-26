//
//  Paleta.swift
//  aula4
//
//  Created by Turma02-15 on 26/08/24.
//

import SwiftUI

struct Paleta: View {
    var body: some View {
        ZStack{
            Color("cinza")
                .edgesIgnoringSafeArea(.top)
            
            Image(systemName: "paintpalette")
                .resizable()
                .frame(width: 200, height: 200)
                .padding(50)
                .background(Color.black)
                .clipShape(Circle())
                .foregroundColor(.cinza)
        }
    }
}

#Preview {
    Paleta()
}
