//
//  ContentView.swift
//  Aula6
//
//  Created by Turma02-15 on 28/08/24.
//

import SwiftUI
import MapKit
import Foundation



struct ContentView: View {
    
    @State private var position = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -14.2342, longitude: -51.1234), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    )
    
    var body: some View {
        VStack {
            Map(position: $position)
                .ignoresSafeArea()
        }
    }
}

struct Location: Identifiable{
    let id = UUID()
    let name : String
    let coordinate : CLLocationCoordinate2D
    let flag : String
    let description : String
}
var arrayLoc = [
    Location(name: "BH", coordinate: CLLocationCoordinate2D(latitude: -19.924557, longitude: -43.991597), flag: "https://s2-g1.glbimg.com/GeGuUOA_bp-oOGRSDZnvIDOmJKc=/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2024/m/u/IIdIAhTZGCMZokHC5vmA/bandeira-bh.jpg", description: "BH tem queijo")

]

#Preview {
    ContentView()
}
