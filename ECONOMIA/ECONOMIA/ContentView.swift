//
//  ContentView.swift
//  ECONOMIA
//
//  Created by Turma01-21 on 24/05/24.
//

import SwiftUI
import Charts


struct ContentView: View {
    
    let despesas: [Despesa] = [
        Despesa(descricao: "Pitol", valor: 150, data: "2023-05-01", categoria: "Roupas", mes: "Maio"),
        Despesa(descricao: "Farmácia", valor: 150, data: "2023-05-02", categoria: "Saúde", mes: "Maio"),
        Despesa(descricao: "Concerto Carro", valor: 350, data: "2023-05-03", categoria: "Transporte", mes: "Maio"),
        Despesa(descricao: "Utilíssima Kit Banheiro", valor: 60, data: "2023-05-04", categoria: "Casa", mes: "Maio"),
        Despesa(descricao: "Farmácia", valor: 55, data: "2023-05-05", categoria: "Saúde", mes: "Maio"),
        Despesa(descricao: "Óculos das Crianças", valor: 20, data: "2023-05-06", categoria: "Saúde", mes: "Maio"),
        Despesa(descricao: "Boticário", valor: 150, data: "2023-12-01", categoria: "Natal", mes: "Dezembro"),
        Despesa(descricao: "Loja Roupas", valor: 125, data: "2023-12-02", categoria: "Natal", mes: "Dezembro"),
        Despesa(descricao: "Loja Blusinha Isa", valor: 80, data: "2023-12-03", categoria: "Natal", mes: "Dezembro"),
        Despesa(descricao: "Pitol", valor: 70, data: "2023-12-04", categoria: "Natal", mes: "Dezembro"),
        Despesa(descricao: "Coperdia IT", valor: 425, data: "2023-12-05", categoria: "Natal", mes: "Dezembro")
    ]
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        let despesasPorCategoria = despesasPorCategoria(from: despesas) // Call the function
        Chart(despesas, id:\.self){ _ in
    
            func despesasPorCategoria(in details: [despesas.descricao]) -> Int {
                return details.map({$0.amount}).reduce(0, +)
            }
        }
    }
   }
                                                   

#Preview {
    ContentView()
}
