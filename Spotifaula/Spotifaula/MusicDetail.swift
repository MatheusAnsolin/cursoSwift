//
//  MusicDetail.swift
//  Spotifaula
//
//  Created by Turma01-21 on 07/05/24.
//

import SwiftUI

struct MusicDetail: View {

   @State var music: Song
    
    var body: some View {
        NavigationStack{
            Spacer()
            AsyncImage(url: URL(string: (music.cover))){ image in
                    image.resizable().aspectRatio(contentMode: .fill)
                } placeholder: {
                    Image(systemName: "photo.fill")
                }.frame(width: 200, height: 200)
            Text(music.name)
            Text(music.artist)
            Spacer()
            HStack(){
                Image(systemName: "shuffle").frame(height: 45)
                Image(systemName: "backward.end.fill").frame(width:45)
                Image(systemName: "play.fill").frame(width: 45)
                Image(systemName: "forward.end.fill").frame(width: 45)
                Image(systemName: "repeat").frame(height: 45)
            }
            Spacer()
        }
    }
}

//dados mockados para preview e estilização
#Preview {
    MusicDetail(music: Song(id: 6, name: "Outro Nome", artist: "Artista Mesmo", cover: "https://source.unsplash.com/random/200x200"))
}
