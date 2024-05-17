//
//  Model.swift
//  TemGas
//
//  Created by Turma01-21 on 17/05/24.
//

import Foundation

struct Gas : Decodable, Identifiable{
    let id : Int
    let leitura : String?
    let horario : String?
}
