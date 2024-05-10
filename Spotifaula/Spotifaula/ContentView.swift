//
//  ContentView.swift
//  Spotifaula
//
//  Created by Turma01-21 on 07/05/24.
//

import SwiftUI


struct ContentView: View {
    
    
    var arrayMusicas = [
        Song(id: 4, name: "Nubm Encore", artist: "Linkin Park", cover: "lp"),
        Song(id: 5, name: "Nubm Encore", artist: "Linkin Park", cover: "playlistCover"),
        Song(id: 6, name: "Outro Nome", artist: "Artista Mesmo", cover: "Capa da musica")
        
    ]
    
    
    var body: some View {
        NavigationStack{
            
            VStack {
                
                ScrollView{
                    Image("playlistCover").resizable().frame(width: 200).frame(height: 200)
                    Text("Titulo da Playlist")
                        .fontWeight(.bold)
                    
                    HStack{
                        Image("Profile").resizable().frame(width: 20).frame(height: 20)
                        Text("Proprietário")
                    }//HStack nome+foto proprietário
                    
                    ForEach(arrayMusicas){item in
                        HStack(){
                            NavigationLink(destination: MusicDetail(music: item ),
                                           label:{
                                AsyncImage(url: URL(string: "https://source.unsplash.com/random/200x200")){ image in
                                    image.resizable().aspectRatio(contentMode: .fill)
                                } placeholder: {
                                    Image(systemName: "photo.fill")
                                }.frame(width: 60, height: 60)
                                
                                VStack{
                                    Text(item.name)
                                    Text(item.artist)}
                                Spacer()
                                Image(systemName: "ellipsis")
                            })//fecha NavigationLink
                        }//HStack
                    }.padding()//fecha ForEach
                        Spacer()
                        Text("Sugeridos")
                        
                        ScrollView(.horizontal){
                            HStack(spacing: 4){
                                VStack{
                                    AsyncImage(url: URL(string: "https://source.unsplash.com/random/200x200")){ image in
                                        image.resizable().aspectRatio(contentMode: .fill)
                                    } placeholder: {
                                        Image(systemName: "photo.fill")
                                    }.frame(width: 200, height: 200)
                                    Text("1 - ONE")
                                }
                                VStack{
                                    AsyncImage(url: URL(string: "https://source.unsplash.com/random/200x200")){ image in
                                        image.resizable().aspectRatio(contentMode: .fill)
                                    } placeholder: {
                                        Image(systemName: "photo.fill")
                                    }.frame(width: 200, height: 200)
                                    Text("2 - TWO")
                                }
                            }
                        }//Scroll horizontal
                    }
                }
            }
        }
    }
#Preview {
    ContentView()
}
