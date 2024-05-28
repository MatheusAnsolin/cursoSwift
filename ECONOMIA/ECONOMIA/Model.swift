//
//  Model.swift
//  ECONOMIA
//
//  Created by Turma01-21 on 24/05/24.
//

import Foundation

// Struct para representar o usuário
struct Usuario: Codable, Hashable {
    var _id: String?
    var _rev: String?
    var nome: String?
    var imagem: String?
    var despesas: [Despesa]
    var assinaturas: [Assinatura]
    var servicos_contratados: [Servico]
}

// Struct para representar uma despesa
struct Despesa: Codable, Hashable {
    var descricao: String?
    var valor: Double?
    var data: String?
    var categoria: String?
    var mes: String?
}

// Struct para representar uma assinatura
struct Assinatura :Codable, Hashable{
    var tipo: String?
    var valor: Double?
    var data_inicio: String?
    var data_fim: String?
}

// Struct para representar um serviço contratado
struct Servico :Codable, Hashable{
    var nome: String?
    var descricao: String?
    var valor: Double?
    var data_contratacao: String?
}

struct gastoPorCategoria : Hashable{
      var categoria:String
      var valor: Double
  }
