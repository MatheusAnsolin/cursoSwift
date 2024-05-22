//
//  Graficos exemplos.swift
//  EconomiaSim
//
//  Created by Turma01-21 on 22/05/24.
//

import SwiftUI
import Charts

struct Graficos_exemplos: View {
    struct Profit:Hashable{
        let department: String
        let profit: Double
    }


    let data: [Profit] = [
        Profit(department: "Production", profit: 15000),
        Profit(department: "Marketing", profit: 8000),
        Profit(department: "Finance", profit: 10000)
    ]
    let meses = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho"]
    let gastos = [ 500, 800, 600, 400, 100, 700]
    let data1 = [
        (name: "Cachapa", sales: 9631),
        (name: "Crêpe", sales: 6959),
        (name: "Injera", sales: 4891),
        (name: "Jian Bing", sales: 2506),
        (name: "American", sales: 1777),
        (name: "Dosa", sales: 625),
    ]


    
    
    var body: some View {
        
        Chart{
            ForEach(meses.indices, id: \.self){index in
                BarMark(
                    x: .value("Meses", meses[index]),
                    y: .value("Gastos", gastos[index]))
                .foregroundStyle(by: .value("Meses", meses[index]))
            }
        }.frame(width: 200).frame(height: 200).padding()
        Spacer()
        Chart(data1, id: \.name) { name, sales in
            SectorMark(angle: .value("Value", sales))
                .foregroundStyle(by: .value("Product category", name))
        }
        Chart(data1, id: \.name) { name, sales in
            SectorMark(
                angle: .value("Value", sales),
                innerRadius: .ratio(0.618),
                outerRadius: .inset(10),
                angularInset: 1
            )
            .cornerRadius(4)
            .foregroundStyle(by: .value("Product category", name))
        }
    }
}

#Preview {
    Graficos_exemplos()
}
