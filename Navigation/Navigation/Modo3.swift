//
//  Modo3.swift
//  Navigation
//
//  Created by Turma01-21 on 06/05/24.
//

import SwiftUI

struct Modo3: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.cyan.ignoresSafeArea()
                VStack{
                        Text("Nome: Matheus")
                        Text("Sobrenome: Padilha")
                    }.foregroundColor(.white)
                        .frame(width: 200)
                        .frame(height: 100)
                        .background(Color.pink)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
#Preview {
    Modo3()
}
