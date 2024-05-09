//
//  Model.swift
//  Characters
//
//  Created by Turma01-21 on 09/05/24.
//

import Foundation

struct Wand : Codable{
    let wood : String?
    let core : String?
    let length : Double?
    
}

//ser literal com nome da constante por conta da API
//protocolo Decodable, se for usar não todos dados da API
//Codable
struct Character : Codable, Identifiable {
    let id : String
    let name : String?
    let alternate_names : [String]?
    let species : String?
    let gender : String?
    let house : String?
    let dateOfBirth : String?
    let yearOfBirth : String?
    let wizard : Bool?
    let ancestry : String?
    let eyeColour : String?
    let lethairColour : String?
    let wand : Wand
    let patronus : String?
    let hogwartsStudent : Bool?
    let hogwartsStaff : Bool?
    let actor : String?
    let alternative_actors : [String]?
    let alive : Bool?
    let image : String?
}
