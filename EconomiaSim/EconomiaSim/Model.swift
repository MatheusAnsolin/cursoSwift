//
//  Model.swift
//  EconomiaSim
//
//  Created by Turma01-21 on 23/05/24.
//
import Foundation

let despesas: [Despesa] = [
    Despesa(descricao: "Pitol", valor: 150, data: "2023-05-01", categoria: "Roupas"),
    Despesa(descricao: "Farmácia", valor: 150, data: "2023-05-02", categoria: "Saúde"),
    Despesa(descricao: "Concerto Carro", valor: 350, data: "2023-05-03", categoria: "Transporte"),
    Despesa(descricao: "Utilíssima Kit Banheiro", valor: 60, data: "2023-05-04", categoria: "Casa"),
    Despesa(descricao: "Farmácia", valor: 55, data: "2023-05-05", categoria: "Saúde"),
    Despesa(descricao: "Óculos das Crianças", valor: 20, data: "2023-05-06", categoria: "Saúde"),
    Despesa(descricao: "Boticário", valor: 150, data: "2023-12-01", categoria: "Natal"),
    Despesa(descricao: "Loja Roupas", valor: 125, data: "2023-12-02", categoria: "Natal"),
    Despesa(descricao: "Loja Blusinha Isa", valor: 80, data: "2023-12-03", categoria: "Natal"),
    Despesa(descricao: "Pitol", valor: 70, data: "2023-12-04", categoria: "Natal"),
    Despesa(descricao: "Coperdia IT", valor: 425, data: "2023-12-05", categoria: "Natal")
]

let gastosPorCategoria = [
    (categoria: "Transporte", custo: 9631),
    (categoria: "Alimentação", custo: 6959),
    (categoria: "Moradia", custo: 4891),
    (categoria: "Lazer", custo: 2506),
    (categoria: "Saúde", custo: 1777),
    (categoria: "Investimento", custo: 625),
]

// Struct para representar uma despesa
struct Despesa: Codable{
    var descricao: String?
    var valor: Double?
    var data: String?
    var categoria: String?
}


// Struct para representar um serviço contratado
struct Servico :Codable{
    var nome: String?
    var descricao: String?
    var valor: Double?
    var data_contratacao: Date?
}

// Struct para representar o economista
struct Economista:Codable {
    var _id: String?
    var _rev: String?
    var nome: String
    var servicos_oferecidos: [Servico]
    var opinioes: [Opiniao]
    var outras_metricas: OutrasMetricas
}

// Struct para representar uma opinião
struct Opiniao :Codable{
    var categoria: String
    var conteudo: String
    var data_postagem: Date
}

// Struct para representar outras métricas do economista
struct OutrasMetricas :Codable{
    var numero_de_alunos: Int
    // Outras métricas...
}
