//
//  IMCView.swift
//  att
//
//  Created by Turma02-15 on 23/08/24.
//

import SwiftUI

struct IMCView: View {
    @State private var name: String = ""
    @State private var peso: Double = 0
    @State private var altura: Double = 0
    @State private var cor: Color = .white
    @State private var msg: String = ""

    
    func calcIMC(peso: Double, altura: Double){
        let imc = peso / (altura * altura)
        backgroundColor(imc: imc)
    }
    
    func backgroundColor(imc: Double) -> Color{
        
        switch imc{
        case ..<18.5:
            cor = Color("Bp")
            msg = "Baixo Peso"
        case 18.5..<24.99:
            cor = Color("Nm")
            msg = "Normal"

        case 25..<29.99:
            cor = Color("Sp")
            msg = "SobrePeso"

        case 30...:
            cor = Color("Ob")
            msg = "Obesidade"

        default:
            cor = Color.white
        }
    
    }
    
    var body: some View {
        ZStack{
            
            VStack{
                
                
                Text("Calculadora IMC")
                    .font(.title)
                Text("IMC: \(calcIMC(), specifier: "%.1f")")
                TextField("Digite seu peso", value: $peso, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding(5)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                
                TextField("Digite seu peso", value: $peso, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding(5)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                
                Button("Calcular"){
                    calcIMC(peso: peso, altura: altura)
                }
                .padding()
                .background(Color(red: 0.4, green: 0.1, blue: 0.8))
                .foregroundColor(.white)
                .clipShape(Capsule())
                
                Spacer()
                
                Text("ok\(name)")
                    .font(.title)
                
                Spacer()
                
                Image("IMC")
                    .resizable()
                    .frame(width: 500, height: 250)
              
            }
        }
        
        
    }
    
}

#Preview {
    IMCView()
}
