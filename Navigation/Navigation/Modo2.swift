//
//  Modo2.swift
//  Navigation
//
//  Created by Turma01-21 on 06/05/24.
//

import SwiftUI

struct Modo2: View {
    @State var nomeT : String = ""

    var body: some View {
        
        NavigationStack{
            ZStack{
                Color.cyan.ignoresSafeArea()
                VStack{
                    TextField("Nome", text: $nomeT)
                        .multilineTextAlignment(.center).padding()
                    Text("Bem vindo, \(nomeT)")
                    Spacer()
                    NavigationLink(destination: Modo2_2(nomeQ : nomeT)){Text("Acessar Tela")}.padding().background(.blue).cornerRadius(6)
                    Spacer()
                }.foregroundColor(.white).frame(width: 200)
                    .frame(height: 200)
                    .background(Color.pink)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            }//ZStack
        }//Navigation
    }
}
#Preview {
    Modo2()
}
