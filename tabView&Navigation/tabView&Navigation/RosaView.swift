//
//  RosaView.swift
//  tabView&Navigation
//
//  Created by Turma01-21 on 06/05/24.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack{
            Color.pink.edgesIgnoringSafeArea(.top)
            Circle().frame(width: 350)
            VStack{
                Image(systemName:"paintbrush")
                    .resizable()
                    .frame(width: 250)
                    .frame(height: 250)
                    .foregroundColor(.pink)
                
            }
        }
    }
}

#Preview {
    RosaView()
}
