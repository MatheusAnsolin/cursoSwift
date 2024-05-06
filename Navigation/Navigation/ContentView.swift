//
//  ContentView.swift
//  Navigation
//
//  Created by Turma01-21 on 06/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false

    var body: some View {
        NavigationStack{
        ZStack{
          Color.cyan.ignoresSafeArea()
                VStack{
                    Image("logo").resizable().frame(height: 150).frame(width: 300)
                    Spacer()
                    NavigationLink(destination: Modo1()){
                        Text("Modo 1")
                            .foregroundColor(Color.white)
                    }.frame(width: 200)
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color.pink)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    
                    NavigationLink(destination: Modo2()){
                        Text("Modo 2").foregroundColor(.white)
                    }.frame(width: 200)
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color.pink)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    
                    Button("Modo 3"){
                        showingSheet.toggle()
                    }
                    .sheet(isPresented: $showingSheet) {
                        Modo1()
                    
                        
                    }.foregroundColor(.white)
                        .frame(width: 200)
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color.pink)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                }//VStack
            }//Navigation
        }//fecha ZStack
    }//fecha body
}//fecha view

#Preview {
    ContentView()
}
