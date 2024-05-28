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
    
    @State private var showingSheet = false
    
    var body: some View {
        VStack{
            
            Text("Grafico de Barras")
            Chart(gastosPorCategoria, id: \.categoria) { categoria, custo in
                SectorMark(
                    angle: .value("Value", categoria),
                    innerRadius: .ratio(0.618),
                    outerRadius: .inset(10),
                    angularInset: 1
                )
                .cornerRadius(4)
                .foregroundStyle(by: .value("Categoria", categoria))
            }.frame(width: 200).frame(height: 300)
            Text("R$ 2.000").position(x:185,y:-185).frame(height: 10)
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
                ForEach(despesas){gasto in
                    Text(gasto.descricao!)
                }
            Spacer()
        }
    }
        

#Preview {
    ContentView()
}
