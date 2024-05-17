//
//  ContentView.swift
//  TemGas
//
//  Created by Turma01-21 on 17/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            List(viewModel.nivelGas){
                Text($0.horario!)
                Text($0.leitura!)
            }
            ForEach(viewModel.nivelGas){leitura in
                Text("leitura:\(leitura.leitura!)")
                Text(leitura.horario!)
            }
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }.onAppear(){
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
