//
//  ContentView.swift
//  EconomiaSim
//
//  Created by Turma01-21 on 21/05/24.
//

import SwiftUI
import Foundation
import Charts

struct ContentView: View {

//    let alimentacao : Double
//    gastos = [descricao, data, categoria, valor]
//    forEach(gastos){
//    if categoria == alimentacao{
//    alimentacao+=valor}
//    if categoria == transporte{
//    transporte+=valor}
//    if categoria == moradia{
//    moradia+=valor}
//    if categoria == investimento{
//    moradia+=valor} else {
//    outro+=valor}
    
    @State private var showingSheet = false
    
    var body: some View {
        VStack{
            
            Text("Grafico de Barras")
            Chart(gastosResumo, id: \.categoria) {categoria, valor in
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
                showingSheet.toggle()
                
            }.frame(width: 100)
                .sheet(isPresented: $showingSheet) {
                    AdcionarView()
                }
            Button("Adcionar investimento") {
            }.frame(width: 100)
            
        }.padding()
        Text("Descrição de gastos")
        ScrollView{
            ForEach(GastoPorCategoria){gasto in
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
