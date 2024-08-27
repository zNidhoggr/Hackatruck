//
//  music.swift
//  Aula5
//
//  Created by Turma02-15 on 27/08/24.
//

import SwiftUI

struct music: View {
    var song: Song
    
    var body: some View {
        VStack{
            Image(song.capa)
                .resizable()
                .frame(width: 100, height: 100)
        }
        
    }
}

#Preview {
    music()
}
