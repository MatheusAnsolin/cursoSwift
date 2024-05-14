//
//  ContentView.swift
//  EstacionaMais
//
//  Created by Turma01-21 on 14/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()

    var body: some View {
        VStack {
            ForEach(viewModel.parks){park in
               // Text(park.nomeEstacionamento!)
               // Text(park.quantidadeVagas!)
                    
            }
         //   Text(viewModel.parks[0].nomeEstacionamento!)
           
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
