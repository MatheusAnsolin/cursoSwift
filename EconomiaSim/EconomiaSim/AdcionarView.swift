//
//  AdcionarView.swift
//  EconomiaSim
//
//  Created by Turma01-21 on 23/05/24.
//

import Foundation
import SwiftUI

struct AdcionarView: View {
    
//    var despesaAd : GastoPorCategoria
    @State var descricaoSheet: String = ""
    @State var categorias = ["Comida", "Transporte", "Moradia", "Tarefas", "Investimento"]
    @State var categoriaSheet: String = "Comida"
    @State var valorSheet: Double = 0.0
    @State var dataSheet: String = ""
    @State var showingSheet2: Bool = false
    
    var body: some View {
        
//        Text("Adcione sua despesa:")
//        TextField("Descricao", text: $despesaAd.categoria)
//        TextField("Valor", value: despesaAd.valor, format: .number)
//        TextField("Categoria", text: despesaAd.categoria)
//        TextField("Data", text: despesaAd.data)
//   Button("Adcionar"){
//            janeiro.append(despesaAd)
//        }
        
        VStack {
            TextField("Descrição", text: $descricaoSheet)
            Picker("Qual a categoria?", selection: $categoriaSheet) {
                ForEach(categorias, id: \.self) { c in
                    Text(c)
                }
            }
            TextField("Valor", value: $valorSheet, format: .number)
            TextField("Data", text: $dataSheet)
            Button("OK") {
                showingSheet2 = false
                janeiro.append(GastoPorCategoria(descricao: descricaoSheet, categoria: categoriaSheet, valor: valorSheet, data: dataSheet))
            }
        }
        .multilineTextAlignment(.center)
    }
}

#Preview {
    AdcionarView()
}




//SHEETVIEW
//TextField("descricaoSheet") --> Picker("categoriaSheet")
//TextField("valorSheet")
//TextField("dataSheet")

//janeiro.append(GastoPorCategoria(descricao: descricaoSheet, categoria: categoriaSheet, valor: valorSheet, data: dataSheet))
