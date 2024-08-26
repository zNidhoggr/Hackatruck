//
//  Lista.swift
//  aula4
//
//  Created by Turma02-15 on 26/08/24.
//

import SwiftUI

struct Lista: View {
    var body: some View {
        
        
        List{
            Text("List")
                .font(.title)
            HStack{
                Text("Item 1")
                Spacer()
                Image(systemName: "paintbrush")
            }
            HStack{
                Text("Item 2")
                Spacer()
                Image(systemName: "paintbrush.pointed")
            }
            HStack{
                Text("Item 3")
                Spacer()
                Image(systemName: "paintpalette")
            }
        
        }
    }
}

#Preview {
    Lista()
}
