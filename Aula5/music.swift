//
//  music.swift
//  Aula5
//
//  Created by Turma02-15 on 27/08/24.
//

import SwiftUI

struct music: View {
  @State var song: Song
    
    var body: some View {
        VStack{
            Image(song.name)
                .resizable()
                .frame(width: 100, height: 100)
        }
        
    }
}

#Preview {
    music(song: Song(id: 1, name: "hoje", artist: "aqui"))
}
