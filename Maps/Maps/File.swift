//
//  File.swift
//  Maps
//
//  Created by Turma01-21 on 08/05/24.
//

import Foundation
import MapKit

struct Location : Identifiable {
    let id = UUID()
    let name : String
    let coordinate : CLLocationCoordinate2D
    let flag : String
    let description : String
}
