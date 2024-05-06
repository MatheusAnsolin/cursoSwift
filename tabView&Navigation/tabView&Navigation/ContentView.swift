//
//  ContentView.swift
//  tabView&Navigation
//
//  Created by Turma01-21 on 06/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            RosaView().badge(0).tabItem{ Label("Rosa", systemImage: "paintbrush") }
            AzulView().badge(0).tabItem{ Label("Azul", systemImage: "paintbrush.pointed")}
            CinzaView().badge(0).tabItem { Label("Cinza", systemImage: "paintpalette") }
            ListView().badge(0).tabItem { Label("Lista", systemImage: "list.dash") }
        }
    }
}

#Preview {
    ContentView()
}
