//
//  CinzaView.swift
//  tabView&Navigation
//
//  Created by Turma01-21 on 06/05/24.
//

import SwiftUI

struct CinzaView: View {
        var body: some View {
            ZStack{
                Color.gray.edgesIgnoringSafeArea(.top)
                Circle().frame(width: 350)
                VStack{
                    Image(systemName:"paintpalette")
                        .resizable()
                        .frame(width: 250)
                        .frame(height: 250)
                        .foregroundColor(.gray)
                    
                }
            }
        }
    }
        
#Preview {
    CinzaView()
}
