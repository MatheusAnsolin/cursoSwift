//
//  Modo2-2.swift
//  Navigation
//
//  Created by Turma01-21 on 06/05/24.
//

import SwiftUI

struct Modo2_2: View {
    @State var nomeQ : String = ""

    var body: some View {
        NavigationStack{
            ZStack{
                Color.cyan.ignoresSafeArea()
                VStack{
                    Text("Volte, \(nomeQ)!")
                }.foregroundColor(.white).frame(width: 200)
                    .frame(height: 200)
                    .background(Color.pink)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            }
        }}
}
#Preview {
    Modo2_2()
}
