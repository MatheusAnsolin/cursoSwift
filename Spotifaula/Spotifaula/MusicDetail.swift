//
//  MusicDetail.swift
//  Spotifaula
//
//  Created by Turma01-21 on 07/05/24.
//

import SwiftUI

struct MusicDetail: View {

    var music : Song
    
    var body: some View {
        NavigationStack{
            
            Image("\(music.cover)")
            Text("\(music.name)")
            Text("\(music.artist)")
            
        }
    }
}

#Preview {
    MusicDetail()
}
