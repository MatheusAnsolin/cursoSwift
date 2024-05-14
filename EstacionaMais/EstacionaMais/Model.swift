//
//  Model.swift
//  EstacionaMais
//
//  Created by Turma01-21 on 14/05/24.
//

import Foundation

struct Carros : Codable{
    let modelo: String
    let ano: Int
    let cor: String
    let preco: Double
    let foto: String
}


struct Estacionamento : Codable, Identifiable{
    let id : String
    let nomeEstacionamento: String?
    let quantidadeVagas: Int?
    let carros : Carros
}

