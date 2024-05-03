//
//  ContentView.swift
//  imc-calc
//
//  Created by Turma01-21 on 03/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var peso: Float = 0
    @State private var altura: Float = 0
    @State var cor: Color = Color("color-obesidade")
    @State var imc : Float = 0
    @State var resultado : String = ""
    
    var body: some View {
        ZStack{
            cor.ignoresSafeArea()
            VStack {
                Text("Calculadora de")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                Text("Indice de Massa Corporal")
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                TextField("Informe seu peso", value: $peso, formatter: NumberFormatter())
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                TextField("Informe sua altura", value: $altura, formatter: NumberFormatter())
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Button("Calcular"){
                    imc = peso * altura
                    if imc < 18.5 { cor = Color("color-baixo-peso"); resultado="Baixo peso"}
                    else if (imc < 24.99) { cor = Color("color-peso-ideal"); resultado="Normal"}
                        else if (imc < 29.99) { cor = Color("color-sobre-peso"); resultado="Sobrepeso"}
                        else if (imc > 30) { cor = Color("color-obesidade");resultado="Obesidade"}
                }.padding().background(Color(.blue)).cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                    
                TextField("Resultado", text: $resultado).multilineTextAlignment(.center)
                    
                    Spacer()
                    Image("tabela-IMC").resizable()
                        .frame(width: 450)
                        .frame(height: 300)
                }
                .padding()
            }
        }
}
#Preview {
    ContentView()
}
