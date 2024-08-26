//
//  Trincha.swift
//  aula4
//
//  Created by Turma02-15 on 26/08/24.
//

import SwiftUI

struct Trincha: View {
    var body: some View {
        ZStack{
            Color("rosa")
                .edgesIgnoringSafeArea(.top)

            Image(systemName: "paintbrush")
                .resizable()
                .frame(width: 200, height: 200)
                .padding(50)
                .background(Color.black)
                .clipShape(Circle())
                .foregroundColor(.rosa)
        }
    }
}

#Preview {
    Trincha()
}
