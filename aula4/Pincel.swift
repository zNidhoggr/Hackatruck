//
//  Pincel.swift
//  aula4
//
//  Created by Turma02-15 on 26/08/24.
//

import SwiftUI

struct Pincel: View {
    var body: some View {
        ZStack{
            Color("azul")
                .edgesIgnoringSafeArea(.top)
            
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .frame(width: 200, height: 200)
                .padding(50)
                .background(Color.black)
                .clipShape(Circle())
                .foregroundColor(.azul)
        }
    }
}

#Preview {
    Pincel()
}
