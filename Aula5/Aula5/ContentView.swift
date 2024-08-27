//
//  ContentView.swift
//  Aula5
//
//  Created by Turma02-15 on 27/08/24.
//

import SwiftUI

struct Song: Identifiable{
    var id: Int
    var name: String
    var artist: String
    var capa: AsyncImage<Image>
}

var arrayMusicas = [
    Song(id: 1, name: "Numb", artist: "Linkin Park", capa: AsyncImage(url: URL(string: "https://i.discogs.com/jLivuY1f8pMJ4MrY-QAtsfY_cZLQKa8VUbwNmOBNawI/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk2Mjgz/MjMtMTQ4Mzg5Mzc4/OC0zOTQ2LmpwZWc.jpeg"))),
    
    Song(id: 2, name: "Numb", artist: "Linkin Park", capa: AsyncImage(url: URL(string: "https://i.discogs.com/jLivuY1f8pMJ4MrY-QAtsfY_cZLQKa8VUbwNmOBNawI/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk2Mjgz/MjMtMTQ4Mzg5Mzc4/OC0zOTQ2LmpwZWc.jpeg"))),
    
    Song(id: 3, name: "Numb", artist: "Linkin Park", capa: AsyncImage(url: URL(string: "https://i.discogs.com/jLivuY1f8pMJ4MrY-QAtsfY_cZLQKa8VUbwNmOBNawI/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk2Mjgz/MjMtMTQ4Mzg5Mzc4/OC0zOTQ2LmpwZWc.jpeg"))),
    
    Song(id: 4, name: "Numb", artist: "Linkin Park", capa: AsyncImage(url: URL(string: "https://i.discogs.com/jLivuY1f8pMJ4MrY-QAtsfY_cZLQKa8VUbwNmOBNawI/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk2Mjgz/MjMtMTQ4Mzg5Mzc4/OC0zOTQ2LmpwZWc.jpeg")))
]
struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(arrayMusicas) { e in
                    NavigationLink(destination: music(song: e)){
                        HStack{
                            //Image(e.capa)
                            //    .resizable()
                            //   .frame(width: 50, height: 50)
                            //    .cornerRadius(8)
                            VStack(alignment: .leading) {
                                Text(e.name)
                                    .font(.headline)
                                Text(e.artist)
                                    .font(.subheadline)
                            }
                            Spacer()
                        }
                        .padding()
                    }
                    Text("Hello, world!")
                }
            }
        }
        .navigationTitle("Musicas")
    }
        
}

#Preview {
    ContentView()
}
