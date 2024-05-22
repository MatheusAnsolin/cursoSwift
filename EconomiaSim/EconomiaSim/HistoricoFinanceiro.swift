//
//  HistoricoFinanceiro.swift
//  EconomiaSim
//
//  Created by Turma01-21 on 21/05/24.
//

import Foundation

struct GastoPorCategoria:Identifiable{
    let id: Int
    let descricao: String?
    let categoria : String?
    let valor: Double?
    let data: String?
}

let janeiro = [
    GastoPorCategoria(id: 1, descricao: "Café", categoria: "Alimentação", valor: 2.50, data: "01/01/2024"),
    GastoPorCategoria(id: 2, descricao: "Gasolina", categoria: "Transporte", valor: 50, data: "02/01/2024"),
    
    GastoPorCategoria(id: 3, descricao: "Café", categoria: "Alimentação", valor: 2.50, data: "01/01/2024"),
    GastoPorCategoria(id: 4, descricao: "Gasolina", categoria: "Transporte", valor: 50, data: "02/01/2024"),

    GastoPorCategoria(id: 5, descricao: "Café", categoria: "Alimentação", valor: 2.50, data: "01/01/2024"),
    GastoPorCategoria(id: 6, descricao: "Gasolina", categoria: "Transporte", valor: 50, data: "02/01/2024")

]

