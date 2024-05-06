//
//  ListView.swift
//  tabView&Navigation
//
//  Created by Turma01-21 on 06/05/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        ZStack{
            Color.gray.edgesIgnoringSafeArea(.top)
            VStack{
                Text("List").font(.largeTitle).padding()
                List{
                    Label("Rosa", systemImage: "paintbrush")
                    Label("Azul", systemImage: "paintbrush.pointed")
                    Label("Cinza", systemImage: "paintpalette")
                    HStack{
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintbrush")
                    
                    }
                }
            }
        }
    }
}

#Preview {
    ListView()
}
