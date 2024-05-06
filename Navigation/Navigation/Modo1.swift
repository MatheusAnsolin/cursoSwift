//
//  Modo1.swift
//  Navigation
//
//  Created by Turma01-21 on 06/05/24.
//

import SwiftUI

struct Modo1: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.cyan.ignoresSafeArea()
                VStack{
                    
                    Text("Modo 1").font(.largeTitle)
                    Spacer()
                    VStack{
                        Text("Nome: Matheus")
                        Text("Sobrenome: Padilha")
                    }.foregroundColor(.white).frame(width: 200)
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color.pink)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                
            }
        }
    }}
#Preview {
    Modo1()
}
