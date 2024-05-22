//
//  ContentView.swift
//  EconomiaSim
//
//  Created by Turma01-21 on 21/05/24.
//

import SwiftUI

import Charts

let data2 = [
    (categoria: "Comida", valor: 4891),
    (categoria: "Transporte", valor: 2506),
    (categoria: "Moradia", valor: 625),
    (categoria: "Investimento", valor: 10000)
     ]

struct ContentView: View {
    
    var body: some View {
        VStack{
            Text("Grafico de Barras")
            Chart(data2, id: \.categoria) {categoria, valor in
                SectorMark(
                    angle: .value("Value", valor),
                    innerRadius: .ratio(0.618),
                    outerRadius: .inset(10),
                    angularInset: 1
                )
                .cornerRadius(4)
                .foregroundStyle(by: .value("Product category", categoria))
            }.padding().frame(height: 200)
            Text("R$ 2.000").position(x:185,y:-115).frame(height: 10)
        }
        HStack{
            Button("Adcionar gasto") {
            }.frame(width: 100)
            
            Button("Adcionar renda") {
            }.frame(width: 100)
          
        }.padding()
        Text("Descrição de gastos")
        ScrollView{
            ForEach(janeiro){gasto in
                HStack{
                    
                    
                    Text(gasto.descricao!)
                    Spacer()
                    Text(String(gasto.valor!))
                }.padding(.horizontal)
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
