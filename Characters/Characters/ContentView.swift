//
//  ContentView.swift
//  Characters
//
//  Created by Turma01-21 on 09/05/24.
//

import SwiftUI

struct ContentView: View {
    
    //instanciar objeto observavel
    @StateObject var viewModel = ViewModel()
    
    var body: some View {

        NavigationStack{
         //   ZStack{
               // Color(.green).ignoresSafeArea()
       // VStack{
            Image("brasao").resizable().frame(height: 200).frame(width: 175).cornerRadius(10)
                    Spacer()
      //      Text(viewModel.chars[1].name!)
            ForEach(viewModel.chars){char in
           //     HStack(){
                  //  NavigationLink(destination: CharacterDetail(char : Character), label: )
                   // VStack{
                AsyncImage(url: URL(string: char.image!)) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                    Text(char.actor!)
                    Text(char.name!)
                        
                    Text(char.actor!)
                 //   }
            //    }
                
    //        }
                    
                }
            Text("11111111111111")
            }.onAppear(){
                viewModel.fetch()
            }
        }
        
        }
//}

#Preview {
    ContentView()
}

