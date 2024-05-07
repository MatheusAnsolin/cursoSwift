//
//  MusicDetail.swift
//  Spotifaula
//
//  Created by Turma01-21 on 07/05/24.
//

import SwiftUI

struct MusicDetail: View {

    @State var music : Song
    
    var body: some View {
        Text("\(music.name)")
    }
}

#Preview {
    MusicDetail(music: <#Song#>)
}
