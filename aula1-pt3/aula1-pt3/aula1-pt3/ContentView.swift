//
//  ContentView.swift
//  aula1-pt3
//
//  Created by Turma01-21 on 02/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var nome: String = "Fulano"
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack{
            
            Image("truck").resizable().aspectRatio(1 / 1, contentMode: .fill).edgesIgnoringSafeArea(.all).saturation(0.5).blur(radius: 3).opacity(0.4)
            
            VStack{
                Text("Bem Vindo, \(nome)").font(.largeTitle)
                
                TextField("Digite seu nome", text: $nome).padding().multilineTextAlignment(.center)
                
                Spacer()
                
                VStack{
                    Image("logo").resizable().frame(width:100).frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).scaledToFill()
                    
                    Image("truck").resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).scaledToFill()
                }
               
                Spacer()
                Button("Entrar"){
                    showingAlert = true
                }
                .alert(isPresented: $showingAlert){
                Alert(title:Text( "Alerta!"), message:Text("Desafio"),
                dismissButton: .default(Text("Vamos lá!")))}
                
                //TextField("Bem vindo, (nome)", text : value)
                /*VStack {
                 Image(systemName: "globe")
                 .imageScale(.large)
                 .foregroundStyle(.tint)
                 Text("Hello, world!")
                 }*/
            }
            .padding()
        }
    }}

#Preview {
    ContentView()
}
